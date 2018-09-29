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
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { string name = Session["Username"].ToString();
                string pwd = Session["UserRolers"].ToString();
            if (object.Equals(Session["Username"], null))
            {
                Response.Write("<script language='JavaScript'>alert('登录成功')</script>");
                Response.Redirect("login.aspx?");
            }
            else
            {
               
                laID.Text = " 当前用户名" + name + "<br/>" + "角色是"+pwd;
             
            }
            if (pwd == "教师")
            {
                Label1.Text = "<br/>欢迎" + name + "教师登录！";
            }
            else
            {
                Label1.Text = "<br/>欢迎" + name + "同学登录！";
                LkAsinformation.Visible = false;
                Lkmsinformation.Visible = false;
            }
        }

        protected void Lkchangepwd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lkchangepwd.aspx?");
        }

        protected void LkAsinformation_Click(object sender, EventArgs e)
        {
            Response.Redirect("addstu.aspx?");
        }

        protected void Lkmsinformation_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lkmsinformation.aspx?");
        }

        protected void LkAbcinformation_Click(object sender, EventArgs e)
        {
            Response.Redirect("1.aspx?");
        }

        protected void Lkmbcinformation_Click(object sender, EventArgs e)
        {
            Response.Redirect("2.aspx?");
        }

        protected void LkAbinformation_Click(object sender, EventArgs e)
        {
            Response.Redirect("addbookclassification.aspx?");
        }

        protected void Lkmbinformation_Click(object sender, EventArgs e)
        {
            Response.Redirect("mbcinformation.aspx?");
        }
    }
}