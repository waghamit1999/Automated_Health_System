using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject.Medical
{
    public partial class MediChangePass : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnMediChangePass_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    // Response.Write("<script>alert('Connection successfull')</script>");
                }

                SqlCommand cmd = new SqlCommand("select * from MedicalReg where MediId='" + TxtMediId.Text.Trim() + "' AND  Password='" + TxtMediOldPass.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                //Response.Write("<script>alert('Connection successfull')</script>");
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        con.Close();
                        if (TxtMediNewPass.Text.Trim() == TxtMediConPass.Text.Trim())
                        {
                            con.Open();
                            SqlCommand cmd1 = new SqlCommand("UPDATE MedicalReg SET Password='" + TxtMediConPass.Text.Trim() + "' WHERE MediId='" + TxtMediId.Text.Trim() + "'", con);

                            cmd1.ExecuteNonQuery();
                            con.Close();
                            lblMsg.Text = "Password Updated Successfully";
                            lblMsg.ForeColor = System.Drawing.Color.Green;

                        }
                        else
                        {
                            lblMsg.Text = "New Password and Conform Password must be same";
                            lblMsg.ForeColor = System.Drawing.Color.Red;
                        }

                    }


                }
                else
                {
                    lblMsg.Text = "Check your Old Password";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}