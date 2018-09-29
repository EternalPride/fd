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
    public partial class _2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["ghr"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(conn);
            sqlconn.Open();
            string str;

           
            
                str = "select * from BookInfo";
            
            SqlDataAdapter adapter = new SqlDataAdapter(str, sqlconn);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            j.DataSource = ds.Tables[0];
            j.DataBind();
            sqlconn.Close();
        }
    }
}