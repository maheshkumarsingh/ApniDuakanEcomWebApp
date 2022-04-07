using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApniDukanEcommerceApplication
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLoginPage.aspx");
        }
    }
}