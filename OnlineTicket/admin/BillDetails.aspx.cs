using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTicket.admin
{
    public partial class BillDetails : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Online"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnnext_Click(object sender, EventArgs e)
        {

        }
        protected void btnpvs_Click(object sender, EventArgs e)
        {

        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {

        }
        protected void btndelfare_Click(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            cn.Open();
            string sql = "Select * from bill_master where bill_no='" + DropDownList1.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(sql, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {

                //string gen = dr["Gender"].ToString();
                //if (gen == "Male")
                //{
                //    rdbMale.Checked = true;
                //    rdbFemale.Checked = false;
                //}
                //if (gen == "Female")
                //{
                //    rdbFemale.Checked = true;
                //    rdbMale.Checked = false;
                //}
                txtsource.Text = dr["source"].ToString();
                txtdate.Text = dr["jdate"].ToString();
                txttime.Text = dr["jtime"].ToString();
                txtdesti.Text = dr["destination"].ToString();
                txtbustype.Text = dr["bus_type"].ToString();
                Txtseatnos.Text = dr["seat_nos"].ToString();
                Txttotalbill.Text = dr["total_bill"].ToString();
                Response.Write("SuccessFully got the Info..");
            }
            cn.Close();
        }
    }
}