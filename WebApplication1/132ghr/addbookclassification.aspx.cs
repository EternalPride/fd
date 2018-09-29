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
    public partial class addbookclassification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Lkback_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void Btn_Click(object sender, EventArgs e)
        {
                 string connStr = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
                            SqlConnection conn = new SqlConnection(connStr);
                            conn.Open();
                            string sql = "insert into BookInfo (BookID,BookStyle,BookName,BookPress,BookISBN,BookDate) values('" + txtid.Text + "','" + ddltype.SelectedValue + "','" + txtbookname.Text + "','" + Txtcbs.Text + "','" + Txtiss.Text + "','" + Txtdate.Text + "')";
                            SqlCommand cmd = new SqlCommand(sql, conn);
                            int ghr = cmd.ExecuteNonQuery();
                            if (ghr != 0)
                            {
                                Response.Write("<script language='JavaScript'>alert('添加成功')</script>");
                            }
                            else
                            {
                                Response.Write("<script language='JavaScript'>alert('添加失败')</script>");
                            }
        }
    }
}