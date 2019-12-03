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
    public partial class Route : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Online"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }




        protected void BtnAdd_Click(object sender, EventArgs e)
        {
           
            txtrouteid.Visible = true;
            txtfrom.Text = "";
            txtto.Text = "";
        }
        protected void btnupdate_Click(object sender, EventArgs e)
        {
            cn.Open();
            string sql = "update route_master set source='" + txtfrom.Text + "',destination='" + txtto.Text + "' where route_id=" + ddlrouteid.SelectedValue + "";
            SqlCommand cmd = new SqlCommand(sql, cn);
            int j;
            j = cmd.ExecuteNonQuery();
            if (j > 0)
            {
                Response.Write("Record updated\n");
                Response.Write(sql);
            }
            else
            {
               
            }
            cn.Close();
        }
        protected void btndelroute_Click(object sender, EventArgs e)
        {
           

            cn.Open();
            string sql = "delete from route_master where route_id=" + ddlrouteid.SelectedValue + "";
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            cn.Open();
            string sql = "insert into route_master values('" + txtrouteid.Text + "','" + txtfrom.Text + "','" + txtto.Text + "')";
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            txtrouteid.Visible = false;

        }
        protected void ddlrouteid_SelectedIndexChanged(object sender, EventArgs e)
        {
            cn.Open();
            string sql = "Select * from route_master where route_id=" + ddlrouteid.SelectedValue + "";
            SqlCommand cmd = new SqlCommand(sql, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {
                txtfrom.Text = dr["source"].ToString();
                txtto.Text = dr["destination"].ToString();
            }
            cn.Close();
        }
        protected void txtrouteid_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}