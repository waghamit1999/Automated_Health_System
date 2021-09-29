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
    public partial class CreateToken : System.Web.UI.Page
    {
        //connection string
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");

        string TkId;
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDateTime.Text = DateTime.Now.ToString("MMM dd, yyyy, HH:mm:ss");
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

                SqlCommand cmd = new SqlCommand("SELECT COUNT(TokenId) FROM CreateToken", con);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                string drVal = TkId + i;
                lblTokenId.Text = drVal;
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
            TxtPatientId.Text = "";
            lblTokenId.Text = "";
            lblName.Text = "";
            lblDOB.Text = "";
            lblBlood.Text = "";
            TxtWeight.Text = "";
            TxtOccupation.Text = "";
            TxtProblem.Text = "";
            DropReDoct.Text = null;
            ImgPatientPic.ImageUrl = null;
            GenerateAutoID();

        }

        protected void BtnCreateToken_Click(object sender, EventArgs e)
        {
            
            try
            {           
                if(con.State==ConnectionState.Closed)
                {
                    con.Open();
                }

            SqlCommand cmd = new SqlCommand("insert into CreateToken(TokenId, PatientId, Date_Time, Name, DOB, Weight, Occupation, Problem, RecDoctor) values('"+lblTokenId.Text.Trim()+"', '"+TxtPatientId.Text.Trim()+"', '"+lblDateTime.Text.Trim()+"', '"+lblName.Text.Trim()+"', '"+lblDOB.Text.Trim()+"', '"+TxtWeight.Text.Trim()+"', '"+TxtOccupation.Text.Trim()+ "', '"+TxtProblem.Text.Trim()+"', '" + DropReDoct.SelectedItem.Value+"')",con);
            cmd.ExecuteNonQuery();

            cmd= new SqlCommand("insert into TempToken(TokenId, PatientId, Date_Time, Name, DOB, Weight, Occupation, Problem, RecDoctor) values('" + lblTokenId.Text.Trim() + "', '" + TxtPatientId.Text.Trim() + "', '" + lblDateTime.Text.Trim() + "', '" + lblName.Text.Trim() + "', '" + lblDOB.Text.Trim() + "', '" + TxtWeight.Text.Trim() + "', '" + TxtOccupation.Text.Trim() + "', '" + TxtProblem.Text.Trim() + "', '" + DropReDoct.SelectedItem.Value + "')", con);
            cmd.ExecuteNonQuery();

            string nm = lblName.Text.Trim();
            con.Close();
                
            lblMsg.Text = nm + " Your Token No: " +lblTokenId.Text.Trim()+ " Created Successfully!!";
            GenerateAutoID();

                ClearTxt();
            }

            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

           
            

        }

        protected void BtnSearchPaId_Click(object sender, EventArgs e)
        {
            
            try
            {
                lblError.Text = "";
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8J813JR\SQLEXPRESS;Initial Catalog=AHS;Integrated Security=True");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                
                SqlCommand cmd = new SqlCommand("select * from PatientReg where PatientId='" + TxtPatientId.Text.Trim() + "'", con);
                string PId = TxtPatientId.Text.Trim();
                da = new SqlDataAdapter("select Name,DOB,Blood,Photo from PatientReg where PatientId='" + PId + "'", con);
                dt = new DataTable();
                da.Fill(dt);
               
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    
                    while (dr.Read())
                    {                     
                        lblName.Text = dt.Rows[0][0].ToString();
                        lblDOB.Text = dt.Rows[0][1].ToString();
                        lblBlood.Text = dt.Rows[0][2].ToString();
                        ImgPatientPic.ImageUrl= dt.Rows[0][3].ToString();
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
            catch(Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void BtnClr_Click(object sender, EventArgs e)
        {
            ClearTxt();
        }

        protected void BtnShow_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = true;
        }

        protected void CheckPatientDridview_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                CheckBox cb = (CheckBox)GridView1.Rows[rowind].FindControl("CheckPatientDridview");
                if (cb.Checked == true)
                {
                    TxtPatientId.Text= GridView1.Rows[rowind].Cells[1].Text;
                    lblName.Text= GridView1.Rows[rowind].Cells[2].Text;
                    lblDOB.Text= GridView1.Rows[rowind].Cells[3].Text;
                    lblBlood.Text= GridView1.Rows[rowind].Cells[6].Text;
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