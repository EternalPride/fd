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
    public partial class lksi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(connStr);
            sqlconn.Open();
            string str = "select * from Student where StudentID='" + Request.QueryString["id"] + "'";
            SqlCommand cmd = new SqlCommand(str, sqlconn);
            SqlDataReader read = cmd.ExecuteReader();
            if (!IsPostBack && Request.QueryString["id"] != null)
            {
                if (read.Read())
                {
                    lbstudent.Text = read["ID"].ToString();
                    txtname.Text = read["StudentName"].ToString();
                    if (read[5].ToString() == "男")
                    {
                        rblgender.SelectedIndex = 0;
                    }
                    else
                    {
                        rblgender.SelectedIndex = 1;
                    }
                    ddlzy.SelectedValue = read[3].ToString();
                    ddlclass.SelectedValue = read[4].ToString();
                    txtage.Text=read[6].ToString();
                }
            }
            read.Close();
            connStr.Clone();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sql = "update Student set StudentName='" + txtname.Text + "',StudentAge='" + txtage.Text + "',StudentProgrm='" + ddlzy.SelectedValue + "',StudentClass='" +ddlclass.SelectedValue + "',StudentGender='" + rblgender.SelectedValue + "' where StudentID='" + Request.QueryString["id"] + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            int ghr = cmd.ExecuteNonQuery();
            if (ghr!= 0)
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
            Response.Redirect("Lkmsinformation.aspx");

        }
    }
}