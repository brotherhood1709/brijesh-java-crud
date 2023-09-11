using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;

namespace VisitorCount
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Parth\\VisitorCount\\VisitorCount\\App_Data\\stud.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceReference2.WebService1SoapClient client = new ServiceReference2.WebService1SoapClient();
            string result = TextBox1.Text;
            Response.Write(client.HelloWorld(result));

            string sql = "select * from  stud";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, cn);
            DataTable ds = new DataTable();
            adapter.Fill(ds);
            Gridview1.DataSource = ds;
            Gridview1.DataBind();
            Repeater1.DataSource = ds;
            Repeater1.DataBind();

        }
    }
}