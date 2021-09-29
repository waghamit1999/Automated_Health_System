using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject.Admin
{
    public partial class ChangePass : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnChangePass_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    // Response.Write("<script>alert('Connection successfull')</script>");
                }

                SqlCommand cmd = new SqlCommand("select * from AdminLoginTable where Password='" + TxtOldPass.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                
                //Response.Write("<script>alert('Connection successfull')</script>");
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        con.Close();
                        if (TxtNewPass.Text.Trim() == TxtConPass.Text.Trim())
                        {
                            con.Open();
                            SqlCommand cmd1 = new SqlCommand("UPDATE AdminLoginTable SET Password=@Password WHERE Password='" + TxtOldPass.Text.Trim() + "'", con);
                            cmd1.Parameters.AddWithValue("@Password", TxtConPass.Text.Trim());
                            cmd1.ExecuteNonQuery();
                            con.Close();
                            Label5.Text = "Password Updated Successfully";
                            Label5.ForeColor = System.Drawing.Color.Green;
                            
                        }
                        else
                        {
                            Label5.Text = "New Password and Conform Password must be same";
                            Label5.ForeColor = System.Drawing.Color.Red;
                        }

                    }
                   

                }
                else
                {
                    Label5.Text = "Check your Old Password";
                    Label5.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}