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
    public partial class MdicalRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string MediId = "Medical";
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAutoID();
            }
        }

        private void ClearTxt()
        {
            lblMedicalId.Text = "";
            TxtMediName.Text = "";
            TxtMediRegNo.Text = "";
            TxtOwnName.Text = "";
            DropGender.SelectedItem.Value = null;
            TxtDOB.Text = "";
            FileOwnPhoto.Page = null;
            DropBloodGroup.SelectedItem.Value = null;            
            TxtMobNo.Text = "";
            TxtMediAddr.Text = "";
            FileEduCerti.Page = null;
            TxtUserName.Text = "";
            TxtPass.Text = "";          
           
            GenerateAutoID();
        }
        public void GenerateAutoID()
        {

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT COUNT(MediId) FROM MedicalReg", con);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                string drVal = MediId + i;
                lblMedicalId.Text = drVal;
                con.Close();
            }

            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            con.Close();
        }

        protected void BtnInsMedi_Click(object sender, EventArgs e)
        {
            try
            {
                GenerateAutoID();
                string a;
                a = ConfigurationManager.ConnectionStrings["con"].ToString();
                string constring = @"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True";
                SqlConnection sqlcon = new SqlConnection(constring);
                SqlConnection con = new SqlConnection(a);
                con.Open();


                FileOwnPhoto.SaveAs(Server.MapPath("~/Medi_Pics/") + Path.GetFileName(FileOwnPhoto.FileName));
                string link = "~/Medi_Pics/" + Path.GetFileName(FileOwnPhoto.FileName);

                FileEduCerti.SaveAs(Server.MapPath("~/Medi_Pics/") + Path.GetFileName(FileEduCerti.FileName));
                string link1 = "~/Medi_Pics/" + Path.GetFileName(FileEduCerti.FileName);

                string uname = lblMedicalId.Text.Trim();
                TxtUserName.Text = uname;
                string pass = uname + "Pass@123";
                
                TxtPass.Text = pass;

                string query = "insert into MedicalReg(MediId, Name, RegNo, OwnerName, Gender, DOB, OwnerPhoto, BloodGroup, MobNo, MediAddress, EduCerti, UserName, Password) values('" + lblMedicalId.Text.Trim() + "', '"+TxtMediName.Text.Trim()+"', '" + TxtMediRegNo.Text.Trim() + "', '" + TxtOwnName.Text.Trim() + "', '"+ DropGender.SelectedItem.Value + "',  '" + TxtDOB.Text.Trim() + "',  '" + link + "', '" + DropBloodGroup.SelectedItem.Value + "', '" + TxtMobNo.Text.Trim() + "', '" + TxtMediAddr.Text.Trim() + "',  '" + link1 + "', '" + TxtUserName.Text.Trim() + "', '" + TxtPass.Text.Trim() + "')";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                string name = TxtMediName.Text;
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                sqlcon.Close();

                LblMsg.Text =  name + " Registered Successful !!";
                LblMsg.ForeColor = System.Drawing.Color.Green;
                ClearTxt();
                GenerateAutoID();


            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void BtnUpMedi_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    FileOwnPhoto.SaveAs(Server.MapPath("~/Medi_Pics/") + Path.GetFileName(FileOwnPhoto.FileName));
                    string link = "~/Medi_Pics/" + Path.GetFileName(FileOwnPhoto.FileName);

                    FileEduCerti.SaveAs(Server.MapPath("~/Medi_Pics/") + Path.GetFileName(FileEduCerti.FileName));
                    string link1 = "~/Medi_Pics/" + Path.GetFileName(FileEduCerti.FileName);
                    SqlCommand cmd = new SqlCommand("update MedicalReg set Name='" + TxtMediName.Text.Trim() + "', RegNo='" + TxtMediRegNo.Text.Trim() + "', OwnerName='" + TxtOwnName.Text.Trim() + "', Gender='" + DropGender.SelectedItem.Value + "', DOB='" + TxtDOB.Text.Trim() + "', OwnerPhoto='" + link + "', BloodGroup='" + DropBloodGroup.SelectedItem.Value + "', MobNo='" + TxtMobNo.Text.Trim() + "', MediAddress='" + TxtMediAddr.Text.Trim() + "', EduCerti='" + link1 + "' where MediId='" + lblMedicalId.Text.Trim() + "'",con);
                    
                    cmd.ExecuteNonQuery();
                    string name = TxtMediName.Text;
                    LblMsg.Text = name + " Updated Successful !!";
                    LblMsg.ForeColor = System.Drawing.Color.Lime;
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

        protected void BtnDelMedi_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("delete from MedicalReg where MediId='" + lblMedicalId.Text.Trim() + "' ", con);
                    cmd.ExecuteNonQuery();

                    string name = TxtMediName.Text;
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

        protected void BtnClrMedi_Click(object sender, EventArgs e)
        {
            ClearTxt();
        }

        protected void BtnShowMedi_Click(object sender, EventArgs e)
        {
            GridViewMedi.Visible = true;            
        }

        protected void ChkBoxGridviewMedi_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                CheckBox cb = (CheckBox)GridViewMedi.Rows[rowind].FindControl("ChkBoxGridviewMedi");
                if (cb.Checked == true)
                {
                    lblMedicalId.Text = GridViewMedi.Rows[rowind].Cells[1].Text;
                    TxtMediName.Text = GridViewMedi.Rows[rowind].Cells[2].Text;
                    TxtMediRegNo.Text = GridViewMedi.Rows[rowind].Cells[3].Text;
                    TxtOwnName.Text = GridViewMedi.Rows[rowind].Cells[4].Text;
                    DropGender.Text = GridViewMedi.Rows[rowind].Cells[5].Text;
                    TxtDOB.Text = GridViewMedi.Rows[rowind].Cells[6].Text;
                    FileOwnPhoto.Page = GridViewMedi.Rows[rowind].Cells[7].Page;
                    DropBloodGroup.Text = GridViewMedi.Rows[rowind].Cells[8].Text;
                    TxtMobNo.Text = GridViewMedi.Rows[rowind].Cells[9].Text;
                    TxtMediAddr.Text = GridViewMedi.Rows[rowind].Cells[10].Text;
                    FileEduCerti.Page = GridViewMedi.Rows[rowind].Cells[11].Page;
                   
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