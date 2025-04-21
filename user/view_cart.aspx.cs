using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_view_cart : System.Web.UI.Page
{
    int sum = 0, i = 0, x = 0, ans = 0,flag=0;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            //  Response.Redirect("view_cart.aspx");
            cart obj = new cart();
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
                dt2 = obj.getviewcartdetail(Convert.ToInt32(HiddenField1.Value));
                for (i = 0; i < dt2.Rows.Count; i++)
                {
                    sum = sum + Convert.ToInt32(dt2.Rows[i]["sub_total"]);
                }

                Label4.Text = dt2.Rows.Count.ToString();
                total.Text = sum.ToString();
                d.Text = (sum - (sum * 0.05)).ToString();
                Repeater1.DataSource = dt2;
                Repeater1.DataBind();
            }
        }
    }
    public void bind()
    {
        cart obj = new cart();

        DataTable dt2 = new DataTable();
        dt2 = obj.getviewcartdetail(Convert.ToInt32(HiddenField1.Value));
        for (i = 0; i < dt2.Rows.Count; i++)
        {
            flag = 1;
            sum = sum + Convert.ToInt32(dt2.Rows[i]["sub_total"]);
        }

        Label4.Text = dt2.Rows.Count.ToString();
        total.Text = sum.ToString();
        d.Text = (sum - (sum * 0.05)).ToString();
        Repeater1.DataSource = dt2;
        Repeater1.DataBind();

    }

    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        cart objreg = new cart();
        if (e.CommandName == "delete_cart")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();
            Response.Redirect("view_cart.aspx");


        }
    }

    protected void btn_continue_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void pro_name_Command(object sender, CommandEventArgs e)
    {


        DataTable dt = new DataTable();
        cart objreg = new cart();
        if (e.CommandName == "edit")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            dt = objreg.findproduct(Id);

            Label1.Text = dt.Rows[0]["proid"].ToString();
            Label2.Text = dt.Rows[0]["sub_cat"].ToString();
            Response.Redirect("men_product_detail.aspx?ProductId=" + Label1.Text + "&catid=" + Label2.Text + "");

        }

    }
    protected void btn_proceed_Click(object sender, EventArgs e)
    {

        if (flag == 1)
        {
            Response.Redirect("payment.aspx");
        }
        else
        {
            btn_proceed.Enabled = false;

        }
       

    }
}
