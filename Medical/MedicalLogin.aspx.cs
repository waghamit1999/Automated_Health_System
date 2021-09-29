using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace MyFinalProject
{
    public partial class MedicalLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("MedicalWork.aspx");
            }
            else
            { }
        }

        protected void BtnMediLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string user = TxtMedicalId.Text.Trim();

                SqlCommand cmd = new SqlCommand("select * from MedicalReg where UserName='" + TxtMedicalId.Text.Trim() + "'  AND  Password= '" + TxtPass.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successfull!!')</script>");
                        Session["user"] = user;

                    }
                    Response.Redirect("MedicalWork.aspx");
                }
                else
                {
                    lblMsg.Text = "Please Check Your ID and Password !!";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                    //Response.Write("<script>alert('Invalid User');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


    }
}