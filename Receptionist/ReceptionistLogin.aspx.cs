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
    public partial class ReceptionistLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("ReceptionistLogin.aspx");
            }
            else
            { }

        }

        protected void BtnRecepLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string user = TxtId.Text.Trim();
                SqlCommand cmd = new SqlCommand("select * from ReceptionistReg where Username='" + TxtId.Text.Trim() + "'  AND  Password= '" + TxtPass.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                //Response.Write("<script>alert('Connection successfull')</script>");
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successfull!!')</script>");
                        Session["user"] = user;

                    }
                    Response.Redirect("ReceptionistWork.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid User');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}