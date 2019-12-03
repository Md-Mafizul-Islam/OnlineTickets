using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTicket.Passenger
{
    public partial class cancle : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Online"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     

     
        protected void btncanclet_Click1(object sender, EventArgs e)
        {

            cn.Open();
            string sql = "delete from bill_master where bill_no=" + Texticketno.Text + " and email='" + Txtemail.Text + "' ";

            SqlCommand cmd = new SqlCommand(sql, cn);
            int j;
            j = cmd.ExecuteNonQuery();
            if (j > 0)
            {
                Response.Write("Record Deleted\n");
                Response.Write(sql);
            }
            else
            {
                Response.Write("Record not Deleted\n");
            }
            cn.Close();
        }
    }
}