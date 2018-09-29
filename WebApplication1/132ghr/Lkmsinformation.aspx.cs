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
    public partial class Lkmsinformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(conn);
            sqlconn.Open();
            string str = "select * from Student";
            SqlCommand cmd = new SqlCommand(str, sqlconn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            if (!IsPostBack)
            {
                ddlclass.DataSource = ds.Tables[0];
                ddlclass.DataTextField = "StudentClass";
                ddlclass.DataValueField = "StudentID";
                ddlclass.DataBind();
                ddlclass.Items.Insert(0, "--显示所有--");
            }
        }

        protected void Btnselect_Click(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(conn);
            sqlconn.Open();
            string str;
            if (ddlclass.SelectedIndex == 0)
            {
                str = "select * from Student";
            }
            else
            {
                str = "select * from Student where StudentID='" + ddlclass.SelectedValue + "'";
            }
            SqlDataAdapter adapter = new SqlDataAdapter(str, sqlconn);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            Gvselect.DataSource = ds.Tables[0];
            Gvselect.DataBind();
            sqlconn.Close();
        }

        protected void Txtselect_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Lkback_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}