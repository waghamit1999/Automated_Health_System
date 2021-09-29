using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace MyFinalProject
{
    public partial class AddPrescription : System.Web.UI.Page
    {
        //connection string
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");

        string TkId;
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDateTime.Text = DateTime.Now.ToString("MMM dd, yyyy, HH:mm:ss");
            
;        }

        private void ClearTxt()
        {
            TxtSeTokenId.Text = "";
            lblPatientId.Text = "";
            lblName.Text = "";
            lblDOB.Text = "";
            lblWeight.Text = "";
            lblProblem.Text = "";
            lblRecDoct.Text = "";
            TxtMedicines.Text = "";
            DropMediName.Text = null;
            TxtFees.Text = "";
            DropDelivery.Text = null;
            Image1.ImageUrl = "";
        }
        protected void BtnSearchTk_Click(object sender, EventArgs e)
        {
            try
            {
                lblError.Text = "";
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                
                SqlCommand cmd = new SqlCommand("select * from TempToken where TokenId='" + TxtSeTokenId.Text.Trim() + "'", con);
                string TId = TxtSeTokenId.Text.Trim();
                da = new SqlDataAdapter("select PatientId,Name,DOB,Weight,Problem,RecDoctor from TempToken where TokenId='" + TId + "'", con);
                
                dt = new DataTable();
                da.Fill(dt);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {

                    while (dr.Read())
                    {
                        lblPatientId.Text= dt.Rows[0][0].ToString();
                        lblName.Text = dt.Rows[0][1].ToString();
                        lblDOB.Text = dt.Rows[0][2].ToString();
                        lblWeight.Text = dt.Rows[0][3].ToString();
                        lblProblem.Text = dt.Rows[0][4].ToString();
                        lblRecDoct.Text = dt.Rows[0][5].ToString();                     

                        con.Close();

                    }

                }
                else
                {
                    lblError.Text = "Invalid ID";
                    lblError.ForeColor = System.Drawing.Color.Red;
                    ClearTxt();
                }
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void BtnShow_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select Photo,Address from PatientReg where PatientId='" + lblPatientId.Text.Trim() + "'", con);
            dt = new DataTable();
            da.Fill(dt);
            Image1.ImageUrl = dt.Rows[0][0].ToString();
            lblPatientAddress.Text= dt.Rows[0][1].ToString();
        }

        protected void BtnAddPres_Click(object sender, EventArgs e)
        {
            try
            {
                if(con.State==ConnectionState.Closed)
                {
                    con.Open();
                }               

                SqlCommand cmd = new SqlCommand("insert into AddPrescription(TokenId, PatientId, Date_Time, Name, DOB, Problem, RecDoctor, Medicines, MedicalName, Address, Fees, MedicineDelivery) values('" + TxtSeTokenId.Text.Trim() + "', '" + lblPatientId.Text.Trim() + "', '" + lblDateTime.Text.Trim() + "', '" + lblName.Text.Trim() + "', '" + lblDOB.Text.Trim() + "', '" + lblProblem.Text.Trim() + "', '" + lblRecDoct.Text.Trim() + "', '" + TxtMedicines.Text.Trim() + "', '" + DropMediName.SelectedItem.Value + "', '" + lblPatientAddress.Text.Trim() + "', '" + TxtFees.Text.Trim() + "', '" + DropDelivery.SelectedItem.Value + "')", con);
                cmd.ExecuteNonQuery();

                string nm = lblName.Text.Trim();
                
                cmd = new SqlCommand("insert into MedicalData(TokenId, PatientId, Date_Time, Name, DOB, Problem, RecDoctor, Medicines, MedicalName, Address, MedicineDelivery) values('" + TxtSeTokenId.Text.Trim() + "', '" + lblPatientId.Text.Trim() + "', '" + lblDateTime.Text.Trim() + "', '" + lblName.Text.Trim() + "', '" + lblDOB.Text.Trim() + "', '" + lblProblem.Text.Trim() + "', '" + lblRecDoct.Text.Trim() + "', '" + TxtMedicines.Text.Trim() + "', '" + DropMediName.SelectedItem.Value + "', '" + lblPatientAddress.Text.Trim() + "', '" + DropDelivery.SelectedItem.Value + "')", con);
                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("insert into TempMedicalData(TokenId, PatientId, Date_Time, Name, DOB, Problem, RecDoctor, Medicines, MedicalName, Address, MedicineDelivery) values('" + TxtSeTokenId.Text.Trim() + "', '" + lblPatientId.Text.Trim() + "', '" + lblDateTime.Text.Trim() + "', '" + lblName.Text.Trim() + "', '" + lblDOB.Text.Trim() + "', '" + lblProblem.Text.Trim() + "', '" + lblRecDoct.Text.Trim() + "', '" + TxtMedicines.Text.Trim() + "', '" + DropMediName.SelectedItem.Value + "', '" + lblPatientAddress.Text.Trim() + "', '" + DropDelivery.SelectedItem.Value + "')", con);
                cmd.ExecuteNonQuery();

                lblMsg.Text = nm + " Your Prescription Recorded Successfully !!";
                string TKn = TxtSeTokenId.Text.Trim();

                cmd = new SqlCommand("delete from TempToken where TokenId='"+TKn+"'",con);
                cmd.ExecuteNonQuery();
                con.Close();

                ClearTxt();

            }
            catch(Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void ChkTempToken_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                CheckBox cb = (CheckBox)GridView1.Rows[rowind].FindControl("ChkTempToken");
                if (cb.Checked == true)
                {
                    TxtSeTokenId.Text = GridView1.Rows[rowind].Cells[2].Text;
                    
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