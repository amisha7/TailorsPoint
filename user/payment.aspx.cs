using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_payment : System.Web.UI.Page
{
    int ans = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Session["email"] == null || Session["email"] == "")
            {
                Response.Redirect("home.aspx");
            }
            else
            {

                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
            }
        }
    }


   
  
    protected void btn_cash_Click(object sender, EventArgs e)
    {
       
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = true;

    }
    protected void Payment_opt_Click(object sender, EventArgs e)
    {
       
        Panel2.Visible = true;
        Panel3.Visible = true;
        Panel4.Visible = false;
    }
    protected void btn_credit_Click(object sender, EventArgs e)
    {
       
        Panel2.Visible = true;
        Panel3.Visible = true;
        Panel4.Visible = false;



    }
    protected void btn_debit_Click(object sender, EventArgs e)
    {

       
        Panel2.Visible = true;
        Panel3.Visible = true;
        Panel4.Visible = false;
    }
    protected void delivert_add_Click(object sender, EventArgs e)
    {
      
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }


    protected void btn_creditsubmit_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["userdetail"];
        if (dt.Rows.Count > 0)
        {
            HiddenField1.Value = dt.Rows[0]["Id"].ToString();
        }
        checkout obj = new checkout();
        obj.user_id = Convert.ToInt32(HiddenField1.Value);
        DataTable dt2 = new DataTable();
        DataTable dt3 = new DataTable();
        dt2 = obj.selectorder(obj);
        dt3 = obj.selectorderid();
        if (dt3.Rows.Count > 0)
        {
            ans = Convert.ToInt32(dt3.Rows[0]["order_id"]) + 1;
        }
        obj.order_id = obj.order_id + 1;
        for (int i = 0; i < dt2.Rows.Count; i++)
        {
            obj.order_id = ans;
            obj.product_id = Convert.ToInt32(dt2.Rows[i]["proid"]);
            obj.quantity = Convert.ToInt32(dt2.Rows[i]["quantity"]);
            obj.price = Convert.ToInt32(dt2.Rows[i]["price"]);
            obj.size = dt2.Rows[i]["size"].ToString();
            obj.sub_total = Convert.ToInt32(dt2.Rows[i]["sub_total"]);
            obj.change_style = dt2.Rows[i]["change_style"].ToString();
            obj.delivery_date = DateTime.Now;
            obj.order_status = 0;
            obj.measurement_id = Convert.ToInt32(dt2.Rows[i]["measurement_id"]);
            obj.address1 = txt_add.Text;
            obj.card_no = txt_card.Text;
            obj.cvv_no = txt_cvv.Text;
            obj.name_card = txt_name.Text;
            obj.expiry_date = txt_mm.Text;

            obj.insertorder(obj);
            
        }
        cart objreg = new cart();
        int id = Convert.ToInt32(HiddenField1.Value);
        objreg.deletecart(id);
        Response.Redirect("myorder.aspx");
    }
   
    protected void btn_pay_Click1(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["userdetail"];
        if (dt.Rows.Count > 0)
        {
            HiddenField1.Value = dt.Rows[0]["Id"].ToString();
        }
        checkout obj = new checkout();
        obj.user_id = Convert.ToInt32(HiddenField1.Value);
        DataTable dt2 = new DataTable();
        DataTable dt3 = new DataTable();
        dt2 = obj.selectorder(obj);
        dt3 = obj.selectorderid();
        if (dt3.Rows.Count > 0)
        {
            ans = Convert.ToInt32(dt3.Rows[0]["order_id"]) + 1;
        }
        obj.order_id = obj.order_id + 1;
        for (int i = 0; i < dt2.Rows.Count; i++)
        {
            obj.order_id = ans;
            obj.product_id = Convert.ToInt32(dt2.Rows[i]["proid"]);
            obj.quantity = Convert.ToInt32(dt2.Rows[i]["quantity"]);
            obj.price = Convert.ToInt32(dt2.Rows[i]["price"]);
            obj.size = dt2.Rows[i]["size"].ToString();
            obj.sub_total = Convert.ToInt32(dt2.Rows[i]["sub_total"]);
            obj.change_style = dt2.Rows[i]["change_style"].ToString();
            obj.delivery_date = DateTime.Now;
            obj.order_status = 0;
            obj.measurement_id = Convert.ToInt32(dt2.Rows[i]["measurement_id"]);
            obj.address1 = txt_cash_add.Text;
            obj.card_no = "";
            obj.cvv_no = "";
            obj.name_card = "";
            obj.expiry_date = "";
            obj.insertorder(obj);
        }
        cart objreg = new cart();
        int id = Convert.ToInt32(HiddenField1.Value);
        objreg.deletecart(id);
        Response.Redirect("myorder.aspx");


    }
    protected void link_prev_Click(object sender, EventArgs e)
    {
        user_reg obj = new user_reg();
        DataTable dt = new DataTable();
        dt = (DataTable)Session["userdetail"];
        if (dt.Rows.Count > 0)
        {

            txt_cash_add.Text = dt.Rows[0]["address"].ToString();
        }
    }
}

