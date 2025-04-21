using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_myorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //  Response.Redirect("view_cart.aspx");
            checkout obj = new checkout();
            DataTable dt = new DataTable();
            if (Session["email"] == null || Session["email"] == "")
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                dt = (DataTable)Session["userdetail"];
                if (dt.Rows.Count > 0)
                {
                    HiddenField1.Value = dt.Rows[0]["Id"].ToString();
                }
                DataTable dt2 = new DataTable();
                dt2 = obj.getorderdetail(Convert.ToInt32(HiddenField1.Value));

                Repeater1.DataSource = dt2;
                Repeater1.DataBind();
            }
        }
    }
   
   
    protected void LinkButton1_Load(object sender, EventArgs e)
    {
        LinkButton lbtn = (LinkButton)sender;
        RepeaterItem item = (RepeaterItem)lbtn.NamingContainer;
        Label txt = (Label)item.FindControl("lbl_order");
        if (txt.Text == "0")
        {
            txt.Text = "Pendding";
        }
        else if (txt.Text == "1")
        {
            txt.Text = "Processing";
        }
        else if (txt.Text == "2")
        {
            txt.Text = "Delivered";
        }
        else if (txt.Text == "3")
        {
            txt.Text = "Cancel";
        }

    }
}