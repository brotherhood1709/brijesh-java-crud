using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;

namespace VisitorCount
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Parth\\VisitorCount\\VisitorCount\\App_Data\\Login.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (text_username.Text != "" && text_password.Text != "")
            {
                string str = "select * from login  where Username='" + text_username.Text + "'and Password='" + text_password.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(str, cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["User_Id"] = text_username;
                    Response.Redirect("visitorcount.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid Email Or Password');", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please Enter Email And Password'');", true);

            }
        }
    }
}