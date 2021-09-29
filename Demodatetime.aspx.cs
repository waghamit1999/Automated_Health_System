using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject
{
    public partial class Demodatetime : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = DateTime.Now.ToString("MMM dd, yyyy, HH:mm:ss");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into dateTbl(Date_Time) values('" + TextBox1.Text.Trim() + "')", con);
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Data Added";
            lblMsg.ForeColor = System.Drawing.Color.Green;
            con.Close();
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from DoctorReg where DoctorId='" + TxtDid.Text.Trim() + "'", con);
                string PId = TxtDid.Text.Trim();
                SqlDataAdapter da = new SqlDataAdapter("select UploadPhoto from DoctorReg where DoctorId='" + PId + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {

                    while (dr.Read())
                    {
                        Image1.ImageUrl= dt.Rows[0][0].ToString();
                        
                        con.Close();

                    }

                }
                else
                {
                    lblError.Text = "Invalid ID";
                    lblError.ForeColor = System.Drawing.Color.Red;
                    
                }
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}