using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTicket.admin
{
    public partial class adminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("~/Passenger/login.aspx");
            }
            else
            {
                lblUser.Text = Session["uname"].ToString();
            }
        }
        protected void Button4_Click(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["Uname"] = null;
            Response.Redirect("~/login.aspx");
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void btnpaydetailsa_Click(object sender, EventArgs e)
        {

        }
        protected void btnfare_Click(object sender, EventArgs e)
        {

        }

        protected void btnbusentry_Click(object sender, EventArgs e)
        {

        }
    }
}