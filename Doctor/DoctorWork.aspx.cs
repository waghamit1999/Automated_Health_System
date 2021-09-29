﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject
{
    public partial class DoctorWork : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("DoctorLogin.aspx");
            }
            else { }
        }

        protected void BtnDrLogout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
        }
    }
}