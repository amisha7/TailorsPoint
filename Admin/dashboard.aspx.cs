using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          int x=0,y=0,check=0;
       
        if (!IsPostBack)
        {
            if (Session["fname"] == null || Session["fname"] == "")
            {

                Response.Redirect("login.aspx");
            }
            else
            {
                user_reg obj1 = new user_reg();
                DataTable dt = new DataTable();
                dt = obj1.getreg();
                DataTable dt3 = new DataTable();
                dt3 = obj1.getreg();
                if (dt3.Rows.Count > 0)
                {
                    for (int i = 0; i < dt3.Rows.Count; i++)
                    {
                        HiddenField2.Value = dt3.Rows[i]["gender"].ToString();
                        if (HiddenField2.Value == "Female")
                        {
                            x = x + 1;

                        }
                        else
                        {
                            y = y + 1;
                        }
                    }

                }

                Label5.Text = y.ToString();
                Label3.Text = x.ToString();
                DataTable dt4 = new DataTable();
                dt4 = obj1.getorderdashbord();
                Label4.Text = dt4.Rows.Count.ToString();
                Label1.Text = dt.Rows.Count.ToString();

                product obj2 = new product();
                DataTable dt1 = new DataTable();
                dt1 = obj2.getreg();
                Label2.Text = dt1.Rows.Count.ToString();

                admin_reg obj3 = new admin_reg();
                DataTable dt5 = new DataTable();
                HiddenField1.Value = Session["fname"].ToString();
                dt5 = obj3.getdata(HiddenField1.Value);
                if (dt5.Rows.Count > 0)
                {
                    String image = dt5.Rows[0]["image1"].ToString();
                    if (image != "")
                    {
                        String filepath = string.Format("../Admin/images/{0}", image);
                        Image1.ImageUrl = filepath;
                    }
                    else
                    {
                        Image1.ImageUrl = "images/user.png".ToString();
                    }

                }


                Label6.Text = "Welcome To TailorsPoint    " + Session["fname"].ToString() + " " + " !!";
                lbl_name.Text = dt5.Rows[0]["fname"].ToString() + dt5.Rows[0]["lname"].ToString();
                lbl_email.Text = dt5.Rows[0]["email"].ToString();
                lbl_address.Text = dt5.Rows[0]["address1"].ToString();
                y = Convert.ToInt32(dt5.Rows[0]["usertype"]);
                if (y == 1)
                {
                    lbl_type.Text = "Admin";
                }
                else
                {
                    lbl_type.Text = "Subdmin";
                }


            }


        }
    }
 
}