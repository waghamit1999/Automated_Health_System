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
    public partial class ContactUs : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void BtnSend_Click(object sender, EventArgs e)
        {
            try
            {
                if(con.State==ConnectionState.Closed)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into ContactUs (Name,MobNo,Email,Comment,Message) values('"+TxtName.Text.Trim()+"', '"+TxtMobNo.Text.Trim()+"','"+TxtEmail.Text.Trim()+ "','"+TxtComm.Text.Trim()+"','"+TxtMsg.Text.Trim()+"')", con);
                    cmd.ExecuteNonQuery();
                    string name = TxtName.Text;
                    lblmsg.Text = name + " Your Response Recorded Successfully !!";
                    lblmsg.ForeColor = System.Drawing.Color.Green;
                    con.Close();
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }
    }
}