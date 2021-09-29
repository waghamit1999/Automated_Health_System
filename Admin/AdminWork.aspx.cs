using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject
{
    public partial class AdminWork : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"]==null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
            else { }
        }

      

        protected void BtnLogout_Click1(object sender, EventArgs e)
        {
            Session["user"] = null;
        }
    }
}