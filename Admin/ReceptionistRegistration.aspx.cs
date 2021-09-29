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
    public partial class ReceptionistRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string DrId = "Receptionist";
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

                SqlCommand cmd = new SqlCommand("SELECT COUNT(RecepId) FROM ReceptionistReg", con);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                string drVal = DrId + i;
                lblReceptionistId.Text = drVal;
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
            lblReceptionistId.Text = "";
            TxtfullName.Text = "";
            DropGender.SelectedItem.Value =null;
            DropBloodGroup.SelectedItem.Value =null;
            TxtDOB.Text = "";
            TxtMobNo.Text = "";
            TxtAddress.Text = "";
            TxtWorkAddress.Text = "";
            TxtSpecialization.Text = "";
            TxtUserName.Text = "";
            TxtPass.Text = "";
            FileUpDegCer.Page = null;
            FilePhoto.Page = null;
            GenerateAutoID();
        }


        protected void BtnInRecep_Click(object sender, EventArgs e)
        {
            try
            {

                string a;
                a = ConfigurationManager.ConnectionStrings["con"].ToString();
                string constring = @"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True";
                SqlConnection sqlcon = new SqlConnection(constring);
                SqlConnection con = new SqlConnection(a);
                con.Open();


                FileUpDegCer.SaveAs(Server.MapPath("~/Recep_Pics/") + Path.GetFileName(FileUpDegCer.FileName));
                string link = "~/Recep_Pics/" + Path.GetFileName(FileUpDegCer.FileName);

                FilePhoto.SaveAs(Server.MapPath("~/Recep_Pics/") + Path.GetFileName(FilePhoto.FileName));
                string link1 = "~/Recep_Pics/" + Path.GetFileName(FilePhoto.FileName);

                string uname = lblReceptionistId.Text.Trim();
                TxtUserName.Text = uname;
                string pass = uname + "Pass@123";
                TxtPass.Text = pass;

                string query = "insert into ReceptionistReg(RecepId, FullName, Gender, BloodGroup, DOB, MobNo, UploadCertificate, Address, WorkAddress, Specialization, UploadPhoto, Username, Password) values('" + lblReceptionistId.Text.Trim() + "', '" + TxtfullName.Text.Trim() + "', '" + DropGender.SelectedItem.Value + "', '" + DropBloodGroup.SelectedItem.Value + "', '" + TxtDOB.Text.Trim() + "', '" + TxtMobNo.Text.Trim() + "', '" + link + "', '" + TxtAddress.Text.Trim() + "', '" + TxtWorkAddress.Text.Trim() + "', '" + TxtSpecialization.Text.Trim() + "', '" + link1 + "', '" + TxtUserName.Text.Trim() + "', '" + TxtPass.Text.Trim() + "')";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                string name = TxtfullName.Text;
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                sqlcon.Close();

                LblMsg.Text = "Receptionist " + name + " Registered Successful !!";
                LblMsg.ForeColor = System.Drawing.Color.Green;
                ClearTxt();
                GenerateAutoID();


            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void BtnClrRecep_Click(object sender, EventArgs e)
        {
            ClearTxt();
        }

        protected void BtnUpRecep_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    FileUpDegCer.SaveAs(Server.MapPath("~/Recep_Pics/") + Path.GetFileName(FileUpDegCer.FileName));
                    string link = "~/Recep_Pics/" + Path.GetFileName(FileUpDegCer.FileName);

                    FilePhoto.SaveAs(Server.MapPath("~/Recep_Pics/") + Path.GetFileName(FilePhoto.FileName));
                    string link1 = "~/Recep_Pics/" + Path.GetFileName(FilePhoto.FileName);
                    SqlCommand cmd = new SqlCommand("update ReceptionistReg set FullName='" + TxtfullName.Text.Trim() + "', Gender='" + DropGender.SelectedItem.Value + "', BloodGroup='" + DropBloodGroup.SelectedItem.Value + "', DOB='" + TxtDOB.Text.Trim() + "', MobNo='" + TxtMobNo.Text.Trim() + "', UploadCertificate='" + link + "', Address='" + TxtAddress.Text.Trim() + "', WorkAddress='" + TxtWorkAddress.Text.Trim() + "', Specialization='" + TxtSpecialization.Text.Trim() + "', UploadPhoto='" + link1 + "' where RecepId='" + lblReceptionistId.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    string name = TxtfullName.Text;
                    LblMsg.Text = name + " Updated Successful !!";
                    LblMsg.ForeColor = System.Drawing.Color.Lime;
                    ClearTxt();
                    GenerateAutoID();
                    con.Close();
                }
                else
                {
                    Response.Write("<script>alert('Connection Failed !!');</script>");
                }

            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void BtnDeRecep_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("delete from ReceptionistReg where RecepId='" + lblReceptionistId.Text.Trim() + "' ", con);
                    cmd.ExecuteNonQuery();

                    string name = TxtfullName.Text;
                    LblMsg.Text = name + " Deleated Successful !!";
                    LblMsg.ForeColor = System.Drawing.Color.Red;

                    ClearTxt();
                    GenerateAutoID();

                }
                else
                {
                    Response.Write("<script>alert('Connection Failed !!');</script>");
                }

            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void BtnSeRecep_Click(object sender, EventArgs e)
        {
             lblReceptionistId.Text = "";
            TxtIdSearch.Visible = true;
        }

        protected void BtnShowAllRecep_Click(object sender, EventArgs e)
        {
            GridViewRecep.Visible = true;
        }

        protected void ChkBoxGridviewRecep_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                CheckBox cb = (CheckBox)GridViewRecep.Rows[rowind].FindControl("ChkBoxGridviewRecep");
                if (cb.Checked == true)
                {
                    lblReceptionistId.Text = GridViewRecep.Rows[rowind].Cells[1].Text;
                    TxtfullName.Text = GridViewRecep.Rows[rowind].Cells[2].Text;
                    DropGender.Text = GridViewRecep.Rows[rowind].Cells[3].Text;
                    DropBloodGroup.Text = GridViewRecep.Rows[rowind].Cells[4].Text;
                    TxtDOB.Text = GridViewRecep.Rows[rowind].Cells[5].Text;
                    TxtMobNo.Text = GridViewRecep.Rows[rowind].Cells[6].Text;
                    TxtAddress.Text = GridViewRecep.Rows[rowind].Cells[7].Text;
                    TxtWorkAddress.Text = GridViewRecep.Rows[rowind].Cells[8].Text;
                    TxtSpecialization.Text = GridViewRecep.Rows[rowind].Cells[9].Text;

                    FileUpDegCer.ID = GridViewRecep.Rows[rowind].Cells[10].ID;
                    FilePhoto.Page = GridViewRecep.Rows[rowind].Cells[11].Page;
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
    }
}