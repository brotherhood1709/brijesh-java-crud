using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;

namespace VisitorCount
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld(string nm)
        {
            SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Parth\\VisitorCount\\VisitorCount\\App_Data\\stud.mdf;Integrated Security=True");
            string sql = "select * from stud where sname='" + nm + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql ,cn );
            DataTable dt = new DataTable(); 
            da.Fill(dt);
            if (dt.Rows.Count > 0 )
            {
                return dt.Rows[0][0].ToString();
            }
            else
            {
                return "No Records Found !!";
            }
        }
    }
}
