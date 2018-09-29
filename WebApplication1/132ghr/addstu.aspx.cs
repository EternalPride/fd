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
    public partial class addstu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sql = "insert into Student (StudentID,ID,StudentName,StudentProgrm,StudentClass,StudentGender,StudentAge) values('" + TxtID.Text + "','" + Txtxh.Text + "','" + Txtname.Text + "','" + ddlzy.SelectedValue + "','" + ddlclass.SelectedValue + "','" + rblgender.SelectedValue + "','" + txtage.Text + "')";
            SqlCommand cmd = new SqlCommand(sql, conn);
            int ghr = cmd.ExecuteNonQuery();
            
            if (ghr!= 0)
            {
                Response.Write("<script language='JavaScript'>alert('添加成功')</script>");
            }
            else
            {
                Response.Write("<script language='JavaScript'>alert('添加失败')</script>");
            }
        }

        protected void lkback_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}