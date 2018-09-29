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
    public partial class Lkchangepwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void change_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection conn = new SqlConnection(conStr);
            conn.Open();
            string sql = "select * from UserInfo where ID='" + Session["id"] + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader re = cmd.ExecuteReader();
            if (re.Read())
            {
                if (txtold.Text == re["UserPassword"].ToString())
                {
                    re.Close();
                    cmd.CommandText = "update UserInfo set UserPassword='" + Txtpwd1.Text + "'where ID='" + Session["id"] + "'";
                    int d = cmd.ExecuteNonQuery();
                    if (d > 0)
                    {
                        Response.Write("<script language='JavaScript'>alert('修改成功！')</script>");
                    }
                    else
                    {
                        Response.Write("<script language='JavaScript'>alert('修改失败！')</script>");
                    }
                }
                else {
                    Response.Write("<script language='JavaScript'>alert('原密码错误！')</script>");
                }
            }
            re.Close();
            conn.Close();
        }

        protected void Lkback_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}