using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace crud
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.Items.Add("BCA");
            DropDownList1.Items.Add("BSCIT");
            if (TextBox1.Text != null)
            {
                SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\brijesh t\\crud\\crud\\App_Data\\student.mdf\";Integrated Security=True");
                string sql = "update [2023-24] set name='"+TextBox1.Text+"',mobileno='"+TextBox2.Text+"',enrollmentno='"+TextBox3.Text+"',course='"+DropDownList1.Text+"' where name='"+TextBox1.Text+"'";
                SqlDataAdapter sda = new SqlDataAdapter(sql, cn);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                
            }
            showdata();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("stud.aspx");
        }
        private void showdata()
        {
            SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\brijesh t\\crud\\crud\\App_Data\\student.mdf\";Integrated Security=True");
            string sql = "select * from [2023-24] where name='" + Request.QueryString["name"].ToString() + "'";
            SqlDataAdapter sda = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            TextBox3.Text = dt.Rows[0][3].ToString();
        }
    }
}