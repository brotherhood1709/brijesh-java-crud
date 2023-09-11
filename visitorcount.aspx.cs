using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorCount
{
    public partial class visitorcount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              if (Session["User_Id"] == null)
            {
                Session.Clear();
                Response.Redirect("login.aspx");
            }
            lblCount.Text = Application["NoOfVisitors"].ToString();
        }
    }
}