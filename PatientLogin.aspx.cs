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
    public partial class PatientLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("PatientLogin.aspx");
            }
            else
            { }
        }

        protected void BtnPatientLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string user = TxtPatientId.Text.Trim();

                SqlCommand cmd = new SqlCommand("select * from PatientReg where Username='" + TxtPatientId.Text.Trim() + "'  AND  Password= '" + TxtPatientPass.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successfull!!')</script>");
                        Session["user"] = user;

                    }
                    Response.Redirect("PatientProfile.aspx");
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