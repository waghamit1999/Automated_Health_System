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
    public partial class DoctorRegistration : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
        
        string DrId = "Doctor";
        SqlDataAdapter da;
        DataTable dt;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GenerateAutoID();
            }
        }             

        public void GenerateAutoID()
        {                     

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT COUNT(DoctorId) FROM DoctorReg", con);
                int i = Convert.ToInt32(cmd.ExecuteScalar());                
                i++;
                string drVal=DrId + i;
                lblDoctorId.Text = drVal;
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
            lblDoctorId.Text = "";
            TxtfullName.Text = "";
            DropGender.SelectedItem.Value = null;
            DropBloodGroup.SelectedItem.Value = null;
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

        //Clear TxtBox 
        protected void BtnClrDr_Click(object sender, EventArgs e)
        {
            ClearTxt();
            GridView1.Visible = false;
        }

        //Insert Record
        protected void BtnInDr_Click(object sender, EventArgs e)
        {
            
            try
            {
              
                con.Open();

               
                FileUpDegCer.SaveAs(Server.MapPath("~/Dr_Pics/") + Path.GetFileName(FileUpDegCer.FileName));
                string link = "~/Dr_Pics/" + Path.GetFileName(FileUpDegCer.FileName);

                FilePhoto.SaveAs(Server.MapPath("~/Dr_Pics/") + Path.GetFileName(FilePhoto.FileName));
                string link1 = "~/Dr_Pics/" + Path.GetFileName(FilePhoto.FileName);
                
                string uname = lblDoctorId.Text.Trim();
                TxtUserName.Text = uname;
                string pass = uname + "Pass@123";
                
                TxtPass.Text = pass;

                string query = "insert into DoctorReg(DoctorId, FullName, Gender, BloodGroup, DOB, MobNo, UploadCertificate, Address, WorkAddress, Specialization, UploadPhoto, Username, Password) values('" + lblDoctorId.Text.Trim() + "', '" + TxtfullName.Text.Trim() + "', '" + DropGender.SelectedItem.Value + "', '" + DropBloodGroup.SelectedItem.Value + "', '" + TxtDOB.Text.Trim() + "', '" + TxtMobNo.Text.Trim() + "', '" + link + "', '" + TxtAddress.Text.Trim() + "', '" + TxtWorkAddress.Text.Trim() + "', '" + TxtSpecialization.Text.Trim() + "', '" + link1 + "', '" + TxtUserName.Text.Trim() + "', '" + TxtPass.Text.Trim() + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                string name = TxtfullName.Text;
                //sqlcon.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                               
                LblMsg.Text ="Doctor "+ name + " Registered Successful !!"; 
                LblMsg.ForeColor = System.Drawing.Color.Green;
                ClearTxt();
                GenerateAutoID();


            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //Update Record
        protected void BtnUpDr_Click(object sender, EventArgs e)
        {
            try
            {
                if(con.State==ConnectionState.Closed)
                {
                    con.Open();
                    FileUpDegCer.SaveAs(Server.MapPath("~/Dr_Pics/") + Path.GetFileName(FileUpDegCer.FileName));
                    string link = "~/Dr_Pics/" + Path.GetFileName(FileUpDegCer.FileName);

                    FilePhoto.SaveAs(Server.MapPath("~/Dr_Pics/") + Path.GetFileName(FilePhoto.FileName));
                    string link1 = "~/Dr_Pics/" + Path.GetFileName(FilePhoto.FileName);
                    SqlCommand cmd = new SqlCommand("update DoctorReg set FullName='" + TxtfullName.Text.Trim() + "', Gender='" + DropGender.SelectedItem.Value + "', BloodGroup='" + DropBloodGroup.SelectedItem.Value + "', DOB='" + TxtDOB.Text.Trim() + "', MobNo='" + TxtMobNo.Text.Trim() + "', UploadCertificate='" + link + "', Address='" + TxtAddress.Text.Trim() + "', WorkAddress='" + TxtWorkAddress.Text.Trim() + "', Specialization='" + TxtSpecialization.Text.Trim() + "', UploadPhoto='" + link1 + "' where DoctorId='" + lblDoctorId.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    string name = TxtfullName.Text;
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
            catch(Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
       
        //Deletd Records  
       protected void BtnDeDr_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                   
                    SqlCommand cmd = new SqlCommand("delete from DoctorReg where DoctorId='"+lblDoctorId.Text.Trim()+"' ", con);
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

        //Search Record
        protected void BtnSeDr_Click(object sender, EventArgs e)
        {
            lblDoctorId.Text = "";
            TxtIdSearch.Visible = true;

        }

        //Show Gridview
        protected void BtnShowAll_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

        //Gridviev
        protected void ChkBoxGridview_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                CheckBox cb = (CheckBox)GridView1.Rows[rowind].FindControl("ChkBoxGridview");
                if (cb.Checked == true)
                {
                    lblDoctorId.Text = GridView1.Rows[rowind].Cells[1].Text;
                    TxtfullName.Text = GridView1.Rows[rowind].Cells[2].Text;
                    DropGender.Text = GridView1.Rows[rowind].Cells[3].Text;
                    DropBloodGroup.Text = GridView1.Rows[rowind].Cells[4].Text;
                    TxtDOB.Text = GridView1.Rows[rowind].Cells[5].Text;
                    TxtMobNo.Text = GridView1.Rows[rowind].Cells[6].Text;
                    TxtAddress.Text = GridView1.Rows[rowind].Cells[7].Text;
                    TxtWorkAddress.Text = GridView1.Rows[rowind].Cells[8].Text;
                    TxtSpecialization.Text = GridView1.Rows[rowind].Cells[9].Text;

                    FileUpDegCer.ID = GridView1.Rows[rowind].Cells[10].ID;
                    FilePhoto.Page = GridView1.Rows[rowind].Cells[11].Page;
                }
                else
                {
                    ClearTxt();

                }
            }
            catch(Exception ex)
            {

            }

        }

       
    }
}