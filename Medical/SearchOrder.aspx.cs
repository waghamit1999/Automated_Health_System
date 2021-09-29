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
    public partial class SearchOrder : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
        {
            lblDate_Time.Text = DateTime.Now.ToString("MMM dd, yyyy HH:mm:ss");
        }

        private void ClearTxt()
        {
            TxtSeToken.Text = "";
            Image1.ImageUrl = "";
            lblPatientId.Text = "";
            lblName.Text = "";
            lblDOB.Text = "";
            lblProblem.Text = "";
            lblRecDoctor.Text = "";
            lblMedicines.Text = "";
            lblMediName.Text = "";
            lblDeliOpt.Text = "";
            lblAddress.Text = "";
            lblMobNo.Text= "";
            TxtDeliBoyMobNo.Text = "";
            TxtDeliBoyNM.Text = "";
            TxtMediFees.Text = "";


        }
      

        protected void BtnShow_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

        protected void BtnClearTxt_Click(object sender, EventArgs e)
        {
            ClearTxt();
        }

        protected void BtnSeTk_Click(object sender, EventArgs e)
        {
            try
            {
                lblErrorTK.Text = "";
                //SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("select * from TempMedicalData where TokenId='" + TxtSeToken.Text.Trim() + "'", con);
                string TId = TxtSeToken.Text.Trim();

                da = new SqlDataAdapter("select PatientId,Name,DOB,Problem,RecDoctor,Medicines,MedicalName,Address,MedicineDelivery from TempMedicalData where TokenId='" + TxtSeToken.Text.Trim() + "'", con);
                dt = new DataTable();
                da.Fill(dt);

                
                SqlDataReader dr = cmd.ExecuteReader();
                
                if (dr.HasRows)
                {

                    while (dr.Read())
                    {
                        lblPatientId.Text = dt.Rows[0][0].ToString();
                        lblName.Text = dt.Rows[0][1].ToString();
                        lblDOB.Text = dt.Rows[0][2].ToString();
                        lblProblem.Text = dt.Rows[0][3].ToString();
                        lblRecDoctor.Text = dt.Rows[0][4].ToString();
                        lblMedicines.Text = dt.Rows[0][5].ToString(); 
                        lblMediName.Text = dt.Rows[0][6].ToString();
                        lblAddress.Text = dt.Rows[0][7].ToString();
                        lblDeliOpt.Text = dt.Rows[0][8].ToString();
                       
                        if(lblDeliOpt.Text=="Yes")
                        {
                            lblDeliBoyMobNo.Visible = true;
                            lblDeliBoyNM.Visible = true;
                            TxtDeliBoyMobNo.Visible = true;
                            TxtDeliBoyNM.Visible = true;
                            Label6.Visible = true;
                            Label9.Visible = true;
                        }
                        else
                        {
                            TxtDeliBoyMobNo.Text = "Self";
                            TxtDeliBoyNM.Text = "Self";
                        }

                        con.Close();

                    }

                }
                else
                {
                    lblErrorTK.Text = "Invalid ID";
                    
                    ClearTxt();
                }
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void BtnShowPic_Click(object sender, EventArgs e)
        {
            string PId = lblPatientId.Text.Trim();
            da = new SqlDataAdapter("select MobNo, Photo from PatientReg where PatientId='" + PId + "'", con);
            dt = new DataTable();
            da.Fill(dt);
            lblMobNo.Text = dt.Rows[0][0].ToString();
            Image1.ImageUrl = dt.Rows[0][1].ToString();
                        
        }

        protected void BtnDoneOrder_Click(object sender, EventArgs e)
        {
            try
            {
               
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into DoneMediDelivery(PatientId,Date_Time,Name,DOB,Address,MobNo,RecDoctor,Medicines,MedicalName,MedicineFees,DeliBoyName,DeliBoyMob) values('" + lblPatientId.Text.Trim() + "','" + lblDate_Time.Text.Trim() + "','" + lblName.Text.Trim() + "','" + lblDOB.Text.Trim() + "','" + lblAddress.Text.Trim() + "','" + lblMobNo.Text.Trim() + "','" + lblRecDoctor.Text.Trim() + "','" + lblMedicines.Text.Trim() + "','" + lblMediName.Text.Trim() + "','" + TxtMediFees.Text.Trim() + "','" + TxtDeliBoyNM.Text.Trim() + "','" + TxtDeliBoyMobNo.Text.Trim() + "')", con);
                
                string nm = lblName.Text.Trim();
                string TkId = TxtSeToken.Text.Trim();
               
                if (lblDeliOpt.Text == "Yes")
                {
                    lblMsg.Text = nm + " Your Collected Medicines";
                }
                else
                {
                    lblMsg.Text = nm + " Your Order Delivered !! ";
                }

                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("delete from TempMedicalData where TokenId='" + TkId + "'", con);
                cmd.ExecuteNonQuery();
                ClearTxt();
                con.Close();
               
            }
            catch(Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}