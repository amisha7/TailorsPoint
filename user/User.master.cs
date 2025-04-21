using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_User : System.Web.UI.MasterPage
{
    int sum = 0, i = 0,flag=0;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            bindmenu();
            if (Session["email"] == null || Session["email"] == "")
            {
                dp_account.Visible = false;
                cart.Visible = false;
                l.Visible = true;
            }
            else
            {
                l.Visible = false;
                bind();
            }
            trend obj = new trend();
            DataTable dt = new DataTable();

            dt = obj.gettrenddetail();
            Repeater4.DataSource = dt;
            Repeater4.DataBind();
            DataTable dt2 = new DataTable();
            
            DataTable dt3 = new DataTable();

            dt3 = obj.gettrenddetailwoman();
            Repeater5.DataSource = dt3;
            Repeater5.DataBind();
          
        }

    }
    public void bindmenu()
    {
        cloth reg = new cloth();
        DataTable dt = new DataTable();
        dt = reg.GegUserHomeMenu("MAN");
        DataTable dt2 = new DataTable();
        dt2 = reg.GegUserHomeMenu("WOMAN");
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        Repeater2.DataSource = dt2;
        Repeater2.DataBind();

    }

    protected void btn_view_cart_Click(object sender, EventArgs e)
    {
        Response.Redirect("view_cart.aspx");
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        user_reg reg = new user_reg();
        DataTable dt = new DataTable();

        dt = reg.dologin(txt_username.Text, txt_password.Text);
        if (dt.Rows.Count > 0)
        {
            HiddenField2.Value = dt.Rows[0]["isactive"].ToString();
            if (HiddenField2.Value == "True")
            {
                Session["userdetail"] = dt;
                //Session["fname"] = dt.Rows[0]["fname"].ToString();
                //Session["mname"] = dt.Rows[0]["mname"].ToString();
                //Session["lname"] = dt.Rows[0]["lname"].ToString();
                //Session["gender"] = dt.Rows[0]["gender"].ToString();
                //Session["address"] = dt.Rows[0]["address"].ToString();
                //Session["country"] = dt.Rows[0]["countryid"].ToString();
                //Session["state"] = dt.Rows[0]["stateid"].ToString();
                //Session["city"] = dt.Rows[0]["cityid"].ToString();
                //Session["contact"] = dt.Rows[0]["contactno"].ToString();
                Session["password1"] = dt.Rows[0]["password1"].ToString();
                Session["email"] = dt.Rows[0]["emailid"].ToString();
                dp_account.Visible = true;
                cart.Visible = true;
                l.Visible = false;

                bind();
            }
            else
            {
                Response.Write("<Script> alert('You are not Authorized User!!')</Script>");

            }

        }
        else
        {

            lbl_invalid.Text = "Invalid Username Or Password!!";
            Response.Write("<Script> alert('Invalid Username Or Password!!')</Script>");
        }
    }


    public void bind()
    {
        cart obj = new cart();
        DataTable dt2 = new DataTable();
        dt2 = (DataTable)Session["userdetail"];

        if (dt2 != null && dt2.Rows.Count > 0)
        {
            HiddenField1.Value = dt2.Rows[0]["Id"].ToString();
        }
        DataTable dt3 = new DataTable();
        dt3 = obj.getviewcartdetail(Convert.ToInt32(HiddenField1.Value));
        if (dt3 != null)
        {
            for (i = 0; i < dt3.Rows.Count; i++)
            {
                sum = sum + Convert.ToInt32(dt3.Rows[i]["sub_total"]);
            }
        }
        Label2.Text = dt3.Rows.Count.ToString();
        Label4.Text = dt3.Rows.Count.ToString();
        total.Text = sum.ToString();
        Repeater3.DataSource = dt3;
        Repeater3.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton lbtn = (LinkButton)sender;
        RepeaterItem item = (RepeaterItem)lbtn.NamingContainer;
        Label txt = (Label)item.FindControl("lbl_man");
        Response.Redirect("men_product.aspx?SubCatId=" + txt.Text + "");
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton lbtn = (LinkButton)sender;
        RepeaterItem item = (RepeaterItem)lbtn.NamingContainer;
        Label txt = (Label)item.FindControl("lbl_woman");
        Response.Redirect("men_product.aspx?SubCatId=" + txt.Text + "");
    }
    protected void LinkButton3_Command(object sender, CommandEventArgs e)
    {
        cart objreg = new cart();
        if (e.CommandName == "delete_cart")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        LinkButton lbtn = (LinkButton)sender;
        RepeaterItem item = (RepeaterItem)lbtn.NamingContainer;
        Label txt = (Label)item.FindControl("lbl_pro");
        Label txt1 = (Label)item.FindControl("lbl_cat");
        Response.Redirect("men_product_detail.aspx?ProductId=" + txt.Text + "&catid=" + txt1.Text + "");

    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        LinkButton lbtn = (LinkButton)sender;
        RepeaterItem item = (RepeaterItem)lbtn.NamingContainer;
        Label txt = (Label)item.FindControl("lbl_pro");
        Label txt1 = (Label)item.FindControl("lbl_cat");
        Response.Redirect("men_product_detail.aspx?ProductId=" + txt.Text + "&catid=" + txt1.Text + "");


    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        user_reg obj = new user_reg();
        DataTable dt = new DataTable();
        dt = obj.searchdetail(textsearch.Text.ToUpper());
        if (dt.Rows.Count > 0)
        {
            txt.Text = dt.Rows[0]["Id"].ToString();
            Response.Redirect("men_product.aspx?SubCatId=" + txt.Text + "");
        }
        else
        {
            Response.Redirect("Home.aspx");
        }
    }

    protected void btn_checkout_Click(object sender, EventArgs e)
    {
        Response.Redirect("payment.aspx");
    }
}

