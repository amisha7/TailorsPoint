using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_login1 : System.Web.UI.Page
{
    String x;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        registration reg = new registration();
        DataTable dt = new DataTable();

        dt = reg.dologin(txt_username.Text, txt_password.Text);
        if (dt.Rows.Count > 0)
        {
            Session["fname"] = dt.Rows[0]["fname"].ToString();
            Session["userimage"] = dt.Rows[0]["image1"].ToString();
            Session["lname"] = dt.Rows[0]["lname"].ToString();
            x = dt.Rows[0]["usertype"].ToString();
            if (x == "1")
            {
                Session["user"] = "Admin";
            }
            else
            {
                Session["user"] = "Subadmin";
            }
            //Session["user"] = dt.Rows[0]["usertype"].ToString();
            Response.Redirect("dashboard.aspx");
        }
        else
        {

            lbl_invalid.Text = "Invalid Username Or Password!!";
        }

    }
    protected void link_forget_Click(object sender, EventArgs e)
    {
        Response.Redirect("forget_pwd.aspx");
    }
}