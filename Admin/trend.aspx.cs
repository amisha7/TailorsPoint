using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_trend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // bindcloth();
            bind();
        }
    }
    public void bind()
    {
        trend obj = new trend();
        DataTable dt = new DataTable();
        dt = obj.gettrend();

        gridview_trend.DataSource = dt;
        gridview_trend.DataBind();


    }
    public void bindcloth()
    {
        product objreg = new product();
        DataTable dt = new DataTable();
        dt = objreg.GetclothData();

        drop_cloth.DataSource = dt;
        drop_cloth.DataTextField = "cloth_category";
        drop_cloth.DataValueField = "Id";
        drop_cloth.DataBind();
        drop_cloth.Items.Insert(0, "--Select Cloth Categories--");
    }
    protected void drop_cloth_SelectedIndexChanged(object sender, EventArgs e)
    {
        product objreg = new product();
        DataTable dt = new DataTable();
        HiddenField1.Value = drop_cloth.SelectedValue;
        dt = objreg.getproduct(Convert.ToInt32(HiddenField1.Value));

        drop_product.DataSource = dt;
        drop_product.DataTextField = "name";
        drop_product.DataValueField = "Id";
        drop_product.DataBind();
        drop_product.Items.Insert(0, "--Select Product--");
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
         HiddenField2.Value = drop_cloth.SelectedValue;
        HiddenField3.Value = drop_product.SelectedValue;
        trend obj = new trend();

        obj.cust_type = drop_custtype.SelectedValue;
            obj.cloth_id = Convert.ToInt32(HiddenField1.Value);
            obj.product_id = Convert.ToInt32(HiddenField3.Value);
            obj.inserttrend(obj);
            Response.Redirect("trend.aspx");
    }
    protected void gridview_trend_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        trend objreg = new trend();
       

        if (e.CommandName == "Deletedata_trend")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }
    }
    protected void drop_custtype_SelectedIndexChanged(object sender, EventArgs e)
    {
        product objreg = new product();
        DataTable dt = new DataTable();
        HiddenField4.Value = drop_custtype.SelectedValue;
        dt = objreg.GetclothbycustID(Convert.ToInt32(HiddenField4.Value));

        drop_cloth.DataSource = dt;
        drop_cloth.DataTextField = "cloth_category";
        drop_cloth.DataValueField = "Id";
        drop_cloth.DataBind();
        drop_cloth.Items.Insert(0, "--Select Cloth Categories--");
   
    }
}