using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTicket.Passenger
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Online"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUserName.Focus();
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                //  string pass = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "MD5");
                cn.Open();
                SqlCommand cmd = new SqlCommand("StoredProcedure1", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@pusername", txtUserName.Text);
                cmd.Parameters.AddWithValue("@ppassword", txtPassword.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read() == true)
                {
                    Session["Uname"] = dr["log_id"].ToString();
                    Response.Redirect("~/admin/Route.aspx");
                }
                else
                {
                    // lblMsg.Text = "Invalid Input,Please Try again !";
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error");
                //lblMsg.Text = "Invalid Username or Password,Please try Again !";
                // lblMsg.Text = ex.ToString();
            }
        }
    }
}