using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;

namespace crud
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\brijesh t\\crud\\crud\\App_Data\\student.mdf\";Integrated Security=True");
                string sql = "delete from [2023-24] where name='" + Request.QueryString["name"].ToString() + "'";
                SqlDataAdapter sda = new SqlDataAdapter(sql, cn);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Response.Redirect("stud.aspx");
        }
    }
}