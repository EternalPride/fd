using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace _132ghr
{
    public partial class mbcinformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(conn);
            sqlconn.Open();
            string str = "select * from BookInfo";
            SqlCommand cmd = new SqlCommand(str, sqlconn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            if (!IsPostBack)
            {
                DropDownList1.DataSource = ds.Tables[0];
                DropDownList1.DataTextField = "BookStyle";
                DropDownList1.DataValueField = "BookID";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--显示所有--");
            }
        }

        protected void Btnselect_Click(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(conn);
            sqlconn.Open();
            string str;

            if (DropDownList1.SelectedIndex == 0)
            {
                str = "select * from BookInfo";
            }
            else
            {
                str = "select * from BookInfo where BookID='" + DropDownList1.SelectedValue + "'";
            }

            SqlDataAdapter adapter = new SqlDataAdapter(str, sqlconn);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            gvbook.DataSource = ds.Tables[0];
            gvbook.DataBind();
            sqlconn.Close();
        }

        protected void Lkback_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = 0; i <= gvbook. Rows.Count - 1; i++)
            {
                CheckBox cb = gvbook.Rows[i].FindControl("ckdelet") as CheckBox;
                if (cb.Checked == true)
                {
                    string connString = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
                    SqlConnection conn = new SqlConnection(connString);
                    conn.Open();
                    string sql = "delete from BookInfo where BookID='" + gvbook.DataKeys[i].Value + "'";
                    SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    conn.Close();
                }
            }

            string connString1 = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection conn1 = new SqlConnection(connString1);
            conn1.Open();
            string sqll = "select * from BookInfo";
            DataSet ds1 = new DataSet();
            SqlDataAdapter sdaa = new SqlDataAdapter(sqll, conn1);
            sdaa.Fill(ds1);
           gvbook. DataSource = ds1.Tables[0];
          gvbook. DataBind();
            conn1.Close();

        }
    }
}