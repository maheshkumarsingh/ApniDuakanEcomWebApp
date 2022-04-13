using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI
{
    public partial class adminLoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (textAdminID.Text.Trim().Equals("mahesh123") && textAdminPassword.Text.Trim().Equals("mahesh123"))
                Response.Redirect("adminHomePage.aspx");
            else
                Response.Write("<script>alert('Incorrect Admin Credentials'); </script>");
        }
    }
}