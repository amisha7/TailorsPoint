using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_men_product_detail : System.Web.UI.Page
{
    public static string strimageUrl = string.Empty;
    String a;
    int flag = 0,f=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            hdnstyleid.Value = "";
            hdnstylename.Value = "";
            flag = 0;
            Label2.Text = hdnstyleid.Value;
            Label8.Visible = false;
            if (Request.QueryString["ProductId"] != null && Request.QueryString["ProductId"] != "")
            {
                int proid = Convert.ToInt32(Request.QueryString["ProductId"]);
                int catid = Convert.ToInt32(Request.QueryString["catid"]);
                DataTable dt = new DataTable();
                product obj = new product();
                dt = obj.getproductbyid(proid);



                if (dt.Rows.Count > 0)
                {

                    lbl_name.Text = dt.Rows[0]["name"].ToString();
                    lbl_price.Text = dt.Rows[0]["price"].ToString();
                    HiddenField2.Value = lbl_price.Text;
                    lbl_des.Text = dt.Rows[0]["descriptions"].ToString();
                    String product_front = dt.Rows[0]["product_front"].ToString();
                    String filepath = string.Format("../Admin/images/{0}", product_front);
                    Image1.ImageUrl = filepath;
                    strimageUrl = filepath;
                    String product_back = dt.Rows[0]["product_back"].ToString();
                    String filepath1 = string.Format("../Admin/images/{0}", product_back);

                    Image2.ImageUrl = filepath1;
                }

                //DataTable dt1 = new DataTable();
                //product obj1 = new product();
                //dt1 = obj.getnamebyid(catid);
                //lbl_panel.Text = dt1.Rows[0]["cloth_category"].ToString();
                //if (lbl_panel.Text == "shirts")
                //{
                //  // pnl_shirt.Visible = true;
                //  // pnl_pent.Visible = false;
                //}
                //else if (lbl_panel.Text == "pents")
                //{
                // // pnl_shirt.Visible = false;
                // // pnl_pent.Visible = true;
                //}

                bindsize(catid);
                bindheader(catid);
                drop_size.SelectedValue = "0";
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
    public void bindsize(int catid)
    {
        size objreg = new size();
        DataTable dt = new DataTable();
        dt = objreg.GetsizeData(catid);
        drop_size.DataSource = dt;
        drop_size.DataTextField = "cloth_size";
        drop_size.DataValueField = "Id";
        drop_size.DataBind();
        drop_size.Items.Insert(0, "Standard  Size");
    }
    public void bindheader(int catid)
    {
        product reg = new product();
        DataTable dt = new DataTable();
        dt = reg.getheader(catid);

        Repeater1.DataSource = dt;
        Repeater1.DataBind();

    }


    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            RepeaterItem ri = e.Item;
            HiddenField hdpid = (HiddenField)ri.FindControl("hdpid");
            DataTable dt = new DataTable();
            product obj = new product();
            dt = obj.imagebind(Convert.ToInt32(hdpid.Value));
            Repeater repimages = (Repeater)ri.FindControl("listing");
            repimages.DataSource = dt;
            repimages.DataBind();

        }
    }
    protected void addtocart_Click(object sender, EventArgs e)
    {
        Label4.Visible = false;
        if (Session["email"] == null || Session["email"] == "")
        {
            Response.Write("<Script> alert('Please Logged In Yourself!!')</Script>");
        }
        else
        {
            cart obj = new cart();
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            DataTable dt3 = new DataTable();
            dt = (DataTable)Session["userdetail"];
            if (dt.Rows.Count > 0)
            {
                obj.user_id = Convert.ToInt32(dt.Rows[0]["Id"]);
            }

            obj.proid = Convert.ToInt32(Request.QueryString["ProductId"]);
            obj.quantity = Convert.ToInt32(txt_qty.Text);
            int x = Convert.ToInt32(txt_qty.Text) * Convert.ToInt32(HiddenField2.Value);
            obj.size = drop_size.SelectedValue;

            if (obj.size != "Standard  Size")
            {
                obj.size = drop_size.SelectedValue;
                obj.measurement_id = 0;
                obj.change_style = hdnstyleid.Value;

                obj.sub_total = x;
                obj.insertcart(obj);
                f = 1;
               
                Response.Redirect("Home.aspx");
            }
            else if (Request.QueryString["measurementId"] != null)
            {
                obj.measurement_id = Convert.ToInt32(Request.QueryString["measurementId"]);
                obj.size = "0";
                obj.change_style = hdnstyleid.Value;

                obj.sub_total = x;
                obj.insertcart(obj);
                f = 1;
                
                Response.Redirect("Home.aspx");
            }
            else
            {
                
                 Label8.Visible = true;
               

            }
            if (f == 1)
            {
                Response.Redirect(HttpContext.Current.Request.RawUrl);
            }

           
          

        }
        //user_User obj1 = new user_User();
        //obj1.bind();
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["email"] == null || Session["email"] == "")
        {
            Response.Write("<Script> alert('Please Logged In Yourself!!')</Script>");
        }
        else if (drop_size.SelectedValue != "Standard  Size")
        {
            Label3.Visible = true;
        }
        else
        {

            Label5.Text = Request.QueryString["ProductId"];
            Label6.Text = Request.QueryString["catid"];
            Response.Redirect("measurement.aspx?ProductId=" + Label5.Text + "&catid=" + Label6.Text + "");
        }
    }

    protected void drop_size_SelectedIndexChanged1(object sender, EventArgs e)
    {


        if (drop_size.SelectedValue != "Standard  Size")
        {
            LinkButton1.Enabled = false;
        }
        if (drop_size.SelectedValue == "Standard  Size")
        {
            LinkButton1.Enabled = true;
        }
        if (Request.QueryString["measurementId"] != null)
        {
            Label4.Visible = true;
            drop_size.SelectedValue = "Standard  Size";
        }


    }
}
