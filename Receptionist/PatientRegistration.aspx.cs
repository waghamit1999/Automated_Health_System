using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject
{
    public partial class PatientRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
       
        string PaId = "Patient";
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAutoID();
            }
        }

        public void GenerateAutoID()
        {

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT COUNT(PatientId) FROM PatientReg", con);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                string drVal = PaId + i;
                lblPatientId.Text = drVal;
                con.Close();
            }

            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            con.Close();
        }

        private void ClearTxt()
        {
            lblPatientId.Text = "";
            TxtName.Text = "";
            TxtDOB.Text = "";
            DropGender.Text = "";
            DropBloodGroup.Text = "";
            TxtMobNo.Text = "";
            TxtAddress.Text = "";
            TxtEdu.Text = "";
            FilePic.Page = null;
            TxtUserName.Text = "";
            TxtPass.Text = "";
            GenerateAutoID();
        }
        protected void BtnInPa_Click(object sender, EventArgs e)
        {
            try
            {      
                                
               con.Open();


                FilePic.SaveAs(Server.MapPath("~/Pa_Pics/") + Path.GetFileName(FilePic.FileName));
                string link = "~/Pa_Pics/" + Path.GetFileName(FilePic.FileName);

                TxtUserName.Text = lblPatientId.Text.Trim();
                TxtPass.Text = TxtUserName.Text.Trim();
                

                string query = "insert into PatientReg(PatientId, Name, DOB, Gender, Blood, MobNo, Address, Education, Photo, Username, Password) values('" + lblPatientId.Text.Trim() + "', '" + TxtName.Text.Trim() + "', '"+TxtDOB.Text.Trim()+"', '" + DropGender.SelectedItem.Value + "', '" + DropBloodGroup.SelectedItem.Value + "', '" + TxtMobNo.Text.Trim() + "', '" + TxtAddress.Text.Trim() + "', '"+TxtEdu.Text.Trim()+"', '" + link + "',  '" + TxtUserName.Text.Trim() + "', '" + TxtPass.Text.Trim() + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                string name = TxtName.Text;
                con.Close();

                LblMsg.Text =  name + " Registered Successful !!";
                LblMsg.ForeColor = System.Drawing.Color.Green;
                ClearTxt();
                GenerateAutoID();

                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        
        protected void BtnClr_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            ClearTxt();
        }

        protected void BtnUpPa_Click(object sender, EventArgs e)
        {
            con.Open();
            FilePic.SaveAs(Server.MapPath("~/Pa_Pics/") + Path.GetFileName(FilePic.FileName));
            string link = "~/Pa_Pics/" + Path.GetFileName(FilePic.FileName);
           
            SqlCommand cmd = new SqlCommand("update PatientReg set Name='"+TxtName.Text.Trim()+"', DOB='"+TxtDOB.Text.Trim()+"', Gender='"+DropGender.SelectedItem.Value+"', Blood='"+DropBloodGroup.SelectedItem.Value+"', MobNo='"+TxtMobNo.Text.Trim()+"', Address='"+TxtAddress.Text.Trim()+"', Education='"+TxtEdu.Text.Trim()+"', Photo='"+link+"' where PatientId='"+lblPatientId.Text.Trim()+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            string name = TxtName.Text;
            LblMsg.Text = name + " Updated Successful !!";
            LblMsg.ForeColor = System.Drawing.Color.Lime;

            ClearTxt();
            GenerateAutoID();
        }

        protected void BtnDelPa_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from PatientReg where PatientId='" + lblPatientId.Text.Trim() + "'", con);
            cmd.ExecuteNonQuery();
            string name = TxtName.Text;
            con.Close();

            LblMsg.Text = name + " Deleted Successfully !!";
            LblMsg.ForeColor = System.Drawing.Color.Red;
            ClearTxt();
            GenerateAutoID();
        }
        protected void ChkBoxGridviewPatient_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                CheckBox cb = (CheckBox)GridView1.Rows[rowind].FindControl("ChkBoxGridviewPatient");
                if (cb.Checked == true)
                {
                    lblPatientId.Text = GridView1.Rows[rowind].Cells[1].Text;
                    TxtName.Text = GridView1.Rows[rowind].Cells[2].Text;
                    TxtDOB.Text = GridView1.Rows[rowind].Cells[3].Text;
                    DropGender.Text = GridView1.Rows[rowind].Cells[4].Text;
                    DropBloodGroup.Text = GridView1.Rows[rowind].Cells[5].Text;
                    TxtMobNo.Text = GridView1.Rows[rowind].Cells[6].Text;
                    TxtAddress.Text = GridView1.Rows[rowind].Cells[7].Text;
                    TxtEdu.Text = GridView1.Rows[rowind].Cells[8].Text;
                    FilePic.Page = GridView1.Rows[rowind].Cells[9].Page;

                }
                else
                {
                    ClearTxt();

                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void BtnView_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

       
    }
}