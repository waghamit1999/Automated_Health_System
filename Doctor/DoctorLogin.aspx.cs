using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject
{
    public partial class DoctorLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("AdminWork.aspx");
            }
            else
            { }
        }

        protected void BtnDoctLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string user = TxtDoctorId.Text.Trim();

                SqlCommand cmd = new SqlCommand("select * from DoctorReg where Username='" + TxtDoctorId.Text.Trim() + "'  AND  Password= '" + TxtPass.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successfull!!')</script>");
                        Session["user"] = user;

                    }
                    Response.Redirect("DoctorWork.aspx");
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