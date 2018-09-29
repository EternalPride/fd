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
    public partial class tszy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(connStr);
            sqlconn.Open();
            string str = "select * from BookInfo where BookID='" + Request.QueryString["id"] + "'";
            SqlCommand cmd = new SqlCommand(str, sqlconn);
            SqlDataReader read = cmd.ExecuteReader();
            if (!IsPostBack && Request.QueryString["id"] != null)
            {
                if (read.Read())
                {
                    lbID.Text = read["BookID"].ToString();
                    txtbookname.Text = read["BookName"].ToString();
                    
                    ddltype.SelectedValue = read["BookStyle"].ToString();
                 Txtiss.Text= read["BookISBN"].ToString();
                    Txtcbs.Text = read["BookPress"].ToString();
                   
                    Txtdate.Text= read["BookDate"].ToString();
                }
            }
            read.Close();
            connStr.Clone();

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sql = "update BookInfo set BookName='" + txtbookname.Text + "',BookStyle='" + ddltype.SelectedValue + "',BookISBN='" + Txtiss.Text + "',BookPress='" + Txtcbs.Text + "',BookDate='" + Txtdate.Text + "' where BookID='" + Request.QueryString["id"] + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            int ghr = cmd.ExecuteNonQuery();
            if (ghr != 0)
            {
                Response.Write("<script language='JavaScript'>alert('修改成功')</script>");
            }
            else
            {
                Response.Write("<script language='JavaScript'>alert('修改失败')</script>");
            }
            conn.Close();
        }

        protected void Lkback_Click(object sender, EventArgs e)
        {
            Response.Redirect("mbcinformation.aspx");
        }
    }
}