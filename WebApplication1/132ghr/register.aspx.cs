using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
namespace _132ghr
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(conn);
            sqlconn.Open();
            string str = "select distinct UserRolers from UserInfo";
            SqlCommand cmd = new SqlCommand(str, sqlconn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            if (!IsPostBack)
            {
               ddlrl. DataSource = ds.Tables[0];
              
              ddlrl. DataValueField = "UserRolers";
              ddlrl. DataBind();
               ddlrl. Items.Insert(0, "--显示所有--");
            }


           
           

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
          
        }

        protected void Btnregister_Click(object sender, EventArgs e)
        {
            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection connj = new SqlConnection(connStr);
            connj.Open();
            string select = "select * from UserInfo where ID='" + TxtID.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand(select, connj);
            DataSet ds = new DataSet();
            da.Fill(ds);
            connj.Close();
            if (ds.Tables[0].Rows.Count != 0)
            {
                Response.Write("<script language='JavaScript'>alert('用户名已存在，请重新输入！')</script>");
            }
            else
            {
                Response.Write("<script language='JavaScript'>alert('用户名尚未使用，可以注册！')</script>");
                SqlConnection conn = new SqlConnection(connStr);
            if (conn != null)
            {
                conn.Open();
                string sqlString = "insert into UserInfo(ID,Username,UserPassword,UserRolers)values('" + TxtID.Text + "','" +Txtname. Text + "','" + Txtpwd.Text + "','" + ddlrl.SelectedValue +  "')";

                SqlCommand cmd = new SqlCommand(sqlString, conn);
                int g = cmd.ExecuteNonQuery();
                if (g == 0)
                {
                    Response.Write("<script language='JavaScript'>alert('注册失败！')</script>");

                }
                else
                {
                    Response.Write("<script language='JavaScript'>alert('注册成功，请登录！')</script>");
                    Server.Transfer("login.aspx");
                }
            }
            else
            {
                Response.Write("<script language='JavaScript'>alert('注册失败！')</script>");
            }
            conn.Close();
            }
           
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
          //  string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
          //SqlConnection conn = new SqlConnection(connStr);
          //  conn.Open();
          //  string select = "select * from UserInfo where ID='" + TxtID.Text + "'";
          //  SqlDataAdapter da = new SqlDataAdapter();
          //  da.SelectCommand = new SqlCommand(select, conn);
          //  DataSet ds = new DataSet();
          //  da.Fill(ds);
          //  conn.Close();
          //  if (ds.Tables[0].Rows.Count != 0)
          //  {
          //      Response.Write("<script language='JavaScript'>alert('用户名已存在，请重新输入！')</script>");
          //  }
          //  else
          //  {
          //     Response.Write ("<script language='JavaScript'>alert('用户名尚未使用，可以注册！')</script>");
          //  }
        }

        protected void Btnlogin_Click(object sender, EventArgs e)
        {
            rfID.Enabled = false;
            Server.Transfer("login.aspx");


        }
    }
}