using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI
{
    public partial class adminHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonUserManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminUserManagement.aspx");
        }

        protected void ButtonProductManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminProductManagementPage.aspx");

        }
    }
}