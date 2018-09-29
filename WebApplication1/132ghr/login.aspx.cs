using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.Configuration;

namespace _132ghr
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnlogin_Click(object sender, EventArgs e)
        {
            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sec = FormsAuthentication.HashPasswordForStoringInConfigFile(Texpwd.Text, "MD5");
            string select="select * from UserInfo where ID='"+TxtID.Text+"' and UserPassword='" + Texpwd.Text + "'";
            SqlCommand cmd = new SqlCommand(select, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                string id = TxtID.Text;
                string iped = Texpwd.Text;
                string name = reader[1].ToString();
                string pwd = reader[3].ToString();
                Session["Username"] = name;
                Session["UserRolers"] = pwd;

                Session["id"] = id;
                Session["i"] = iped;
                Response.Write("<script language='JavaScript'>alert('登录成功')</script>");
                Response.Redirect("homepage.aspx?");

            }
            else
            {
                Response.Write("<script language='JavaScript'>alert('用户名或密码错误')</script>");
                    return;
            }
            //SqlDataAdapter da = new SqlDataAdapter();
            //da.SelectCommand = new SqlCommand(select, conn);
            //DataSet ds = new DataSet();

            //da.Fill(ds);


            //if (ds.Tables[0].Rows.Count == 0)
            //{
            //    Response.Write("<script language='JavaScript'>alert('用户名或密码错误')</script>");
            //    return;
            //}
            //else
            //{


            //    string name = ds.DataSetName[0].ToString();
            //        string pwd = Texpwd.Text;
            //        Session["Username"] = name;
            //        Session["UserRolers"] = pwd;
            //        Response.Write("<script language='JavaScript'>alert('登录成功')</script>");
            //        Response.Redirect("homepage.aspx?");



            //}
            //conn.Close();

        }

        protected void Btnregister_Click(object sender, EventArgs e)
        {
           
            Server.Transfer("register.aspx");
        }

        protected void TxtID_TextChanged(object sender, EventArgs e)
        {

        }
    }
}