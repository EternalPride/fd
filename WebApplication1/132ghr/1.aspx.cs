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
    public partial class _1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnadd_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            SqlConnection conn1 = new SqlConnection(connStr);

            string sql = "select * from Book";
            conn.Open();
            conn1.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            //SqlDataReader re = cmd.ExecuteReader();

            //while (re.Read())
            //{
            //    if (Txtbook.Text != re[1].ToString())
            //    {
            //        Response.Write("<script language='JavaScript'>alert('用户已存在，请从新输入')</script>");

            //    } conn.Close();
            //}
            if (conn1 != null)
            {
                string sqlk = "insert into Book (BookID,BookType) values('" + txtId.Text + "','" + Txtbook.Text + "')";
                SqlCommand cmd1 = new SqlCommand(sqlk, conn);
                int ghr = cmd1.ExecuteNonQuery();
                if (ghr == 0)
                {
                    Response.Write("<script language='JavaScript'>alert('添加失败！')</script>");
                }
                else
                {
                    Response.Write("<script language='JavaScript'>alert('添加成功')</script>");
                }
            }
            conn1.Close();
          //  re.Close();
     
        }

        protected void Lkback_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}