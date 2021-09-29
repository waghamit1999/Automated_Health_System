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
    
    public partial class AdminLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

              

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("AdminWork.aspx");
            }
            else
            {}
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void ButtonAdminLogin_Click(object sender, EventArgs e)
        {         

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State==ConnectionState.Closed)
                {
                con.Open();
                }
                string user = txtAdminId.Text.Trim();
                
                SqlCommand cmd = new SqlCommand("select * from AdminLoginTable where AdminID='" + txtAdminId.Text.Trim() + "'  AND  Password= '" + txtAdminPass.Text.Trim() + "'",con);
                SqlDataReader dr = cmd.ExecuteReader();
                
                if (dr.HasRows)
                    {
                    while (dr.Read())
                    {   
                    Response.Write("<script>alert('Login Successfull!!')</script>");
                        Session["user"] = user;
                       
                    }
                    Response.Redirect("AdminWork.aspx");
                    }
               else 
                {
                    lblMsg.Text = "Please Check Your ID and Password !!";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                    //Response.Write("<script>alert('Invalid User');</script>");
                }
            }
            catch(Exception ex)
                {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
                }        

           
        }
    }
}