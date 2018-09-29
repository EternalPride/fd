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
    public partial class h : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(conn);
            sqlconn.Open();
            string str = "select * from Book";
            SqlCommand cmd = new SqlCommand(str, sqlconn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            if (!IsPostBack)
            {
                DropDownList1.DataSource = ds.Tables[0];

                DropDownList1.DataValueField = "UserRolers";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--显示所有--");
            }
        }
    }
}