using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorCount
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Parth\\VisitorCount\\VisitorCount\\App_Data\\stud.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select * from  stud";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, cn);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            ds.WriteXml(Server.MapPath("XMLFile1.xml"));
            ds.ReadXml(Server.MapPath("XMLFile1.xml"));
        }
    }
}