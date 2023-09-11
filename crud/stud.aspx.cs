using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace crud
{
    public partial class stud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.Items.Add("BCA");
            DropDownList1.Items.Add("BSCIT");
            showdata();
            Session["name"]=TextBox1.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = "enabled";
            SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\brijesh t\\crud\\crud\\App_Data\\student.mdf\";Integrated Security=True");
            string sql = "insert into [2023-24] (name,mobileno,enrollmentno,course,active) values('" + TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+DropDownList1.Text+"','"+a+"')";
            SqlDataAdapter sda = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            showdata();
        }
        private void showdata()
        {
            SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\brijesh t\\crud\\crud\\App_Data\\student.mdf\";Integrated Security=True");
            string sql = "select * from [2023-24]";
            SqlDataAdapter sda = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}