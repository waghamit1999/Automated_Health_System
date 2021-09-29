using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject
{
    public partial class PatientView : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("PatientLogin.aspx");
            }
            else { }
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            BtnSave.Visible = true;
           
            TxtName.Visible = true;
            TxtDOB.Visible = true;
            DropGender.Visible = true;
            DropBloodGroup.Visible = true;
            TxtMobNo.Visible = true;
            TxtAddress.Visible = true;
            TxtEdu.Visible = true;
            FilePic.Visible = true;
            TxtUserName.Visible = true;
            TxtPass.Visible = true;

            TxtName.Text = lblname.Text.Trim();
            TxtDOB.Text = lblDOB.Text.Trim();
            DropGender.Text = lblGender.Text.Trim();
            DropBloodGroup.Text = lblBloodGroup.Text.Trim();
            TxtMobNo.Text = lblMobNo.Text.Trim();
            TxtAddress.Text = lblAddress.Text.Trim();
            TxtEdu.Text = lblEdu.Text.Trim();
            FilePic.Page = lblPhoto.Page;
            TxtUserName.Text = lblUsername.Text.Trim();
            TxtPass.Text = lblPassword.Text.Trim();

            lblname.Visible = false;
            lblDOB.Visible = false;
            lblGender.Visible = false;
            lblBloodGroup.Visible = false;
            lblMobNo.Visible = false;
            lblAddress.Visible = false;
            lblEdu.Visible = false;
            lblPhoto.Visible = false;
            lblUsername.Visible = false;
            lblPassword.Visible = false;
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                lblError.Text = "";
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from PatientReg where PatientId='" + TxtPaIdSearch.Text.Trim() + "' and Password='"+TxtPatientPass.Text.Trim()+"'", con);
                string PId = TxtPaIdSearch.Text.Trim();
                da = new SqlDataAdapter("select Name,DOB,Gender,Blood,MobNo,Address,Education,Photo,Username,Password from PatientReg where PatientId='" + PId + "'", con);
                dt = new DataTable();
                da.Fill(dt);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {

                    while (dr.Read())
                    {

                        lblname.Text = dt.Rows[0][0].ToString();
                        lblDOB.Text= dt.Rows[0][1].ToString();
                        lblGender.Text= dt.Rows[0][2].ToString();
                        lblBloodGroup.Text= dt.Rows[0][3].ToString();
                        lblMobNo.Text= dt.Rows[0][4].ToString();
                        lblAddress.Text= dt.Rows[0][5].ToString();
                        lblEdu.Text= dt.Rows[0][6].ToString();
                        lblPhoto.Text= dt.Rows[0][7].ToString();
                        lblUsername.Text= dt.Rows[0][8].ToString();
                        lblPassword.Text= dt.Rows[0][9].ToString();
                        Image1.ImageUrl= dt.Rows[0][7].ToString();

                        Label34.Visible = false;
                        TxtPatientPass.Visible = false;
                        BtnSearch0.Visible = false;
                        lblError.Visible = false;
                        con.Close();

                    }
                    lblError.Text = " You Type Incorrect Patient Id or Password !!";
                }
                else
                {
                    lblError.Text = "Please Check Your Id !!";
                    lblError.ForeColor = System.Drawing.Color.Red;
                    
                }
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
           

        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                FilePic.SaveAs(Server.MapPath("~/Pa_Pics/") + Path.GetFileName(FilePic.FileName));
                string link = "~/Pa_Pics/" + Path.GetFileName(FilePic.FileName);
               
                SqlCommand cmd = new SqlCommand("update PatientReg set Name='" + TxtName.Text.Trim() + "',DOB='" + TxtDOB.Text.Trim() + "',Gender='" + DropGender.SelectedItem.Value + "',Blood='" + DropBloodGroup.SelectedItem.Value + "',MobNo='" + TxtMobNo.Text.Trim() + "',Address='" + TxtAddress.Text.Trim() + "',Education='" + TxtEdu.Text.Trim() + "',Photo='" + link + "',Username='" + TxtUserName.Text.Trim() + "',Password='" + TxtPass.Text.Trim() + "' where PatientId='" + TxtPaIdSearch.Text.Trim() + "'", con);
                //("update PatientReg set Name='" + TxtName.Text.Trim() + "', DOB='" + TxtDOB.Text.Trim() + "', Gender='" + DropGender.SelectedItem.Value + "', Blood='" + DropBloodGroup.SelectedItem.Value + "', MobNo='" + TxtMobNo.Text.Trim() + "', Address='" + TxtAddress.Text.Trim() + "', Education='" + TxtEdu.Text.Trim() + "', Photo='" + link + "' where PatientId='" + lblPatientId.Text.Trim() + "'", con);
                string nm = TxtName.Text.Trim();
                cmd.ExecuteNonQuery();
                LblMsg.Text = nm + " Your Data Updated Successfully !!";
                con.Close();
            }
            catch(Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void BtnMyRecord_Click(object sender, EventArgs e)
        {
            con.Open();
            GridView1.Visible = true;
            GridView1.Visible = true;
            Label1.Visible = true;
            Label35.Visible = true;
            
            
            //clinic data of patient
            da = new SqlDataAdapter("SELECT TokenId, Date_Time, Name, DOB, Problem, RecDoctor, Medicines, MedicalName, Address, Fees, MedicineDelivery FROM AddPrescription WHERE PatientId='"+ TxtPaIdSearch.Text + "'", con);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            //medicines data of patient from medical
            da = new SqlDataAdapter("SELECT PatientId, Date_Time, Name, Medicines, MedicalName, MedicineFees, DeliBoyName, DeliBoyMob FROM DoneMediDelivery WHERE PatientId='"+TxtPaIdSearch.Text+"'", con);
            dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            con.Close();
        }
    }
}