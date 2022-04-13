using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI
{
    public partial class adminProductManagementPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAddProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminProductCRUD.aspx");
        }

        protected void ButtonUpdateProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminProductCRUD.aspx");
        }

        protected void ButtonDeleteProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminProductCRUD.aspx");
        }

        protected void ButtonUserManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminUserManagement.aspx");
        }
    }
}