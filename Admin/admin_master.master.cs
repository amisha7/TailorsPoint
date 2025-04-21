using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_admin_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["fname"] == null || Session["fname"] == "")
            {

                Response.Redirect("login.aspx");
            }
            else
            {
               
                lbl_name.Text = Session["fname"].ToString() + " " + Session["lname"].ToString();
                utype.Text = Session["user"].ToString();
                if (utype.Text == "Subadmin")
                {

                    r.Visible = false;
                    cloth.Visible = false;
                    product.Visible = false;
                    style.Visible = false;
                    geo.Visible = false;

                    order.Visible = false;
                    feedback.Visible = false;
                    d.Visible = false;
                }
                
                if (Session["userimage"] != null && Session["userimage"] != "")
                {
                    Image2.ImageUrl = string.Format("images/{0}", Session["userimage"].ToString());
                }
                else
                {
                    Image2.ImageUrl = "images/user.png".ToString();
                }
            }

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Session.Clear();
        Session.Abandon();
        Response.Redirect("login.aspx");

    }
}
