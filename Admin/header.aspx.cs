using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_header : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bindcloth();
            bind();
        }
    }
    public void bind()
    {
        header obj = new header();
        DataTable dt = new DataTable();
        dt = obj.getheader();

        gridview_style.DataSource = dt;
        gridview_style.DataBind();


    }
    public void bindcloth()
    {
        size objreg = new size();
        DataTable dt = new DataTable();
        dt = objreg.GetsizeData1();

        drop_change.DataSource = dt;
        drop_change.DataTextField = "cloth_category";
        drop_change.DataValueField = "Id";
        drop_change.DataBind();
        drop_change.Items.Insert(0, "--Select Cloth Type--");
    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = drop_change.SelectedValue;
        header obj = new header();
        obj.name = txt_name.Text;
       

            obj.cloth_id= Convert.ToInt32(HiddenField1.Value);

            obj.insertheader(obj);


        Response.Redirect("header.aspx");
    }



    protected void gridview_style_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        header objreg = new header();
        if (e.CommandName == "Deletedata_header")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }
    }
    protected void gridview_style_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridview_style.PageIndex = e.NewPageIndex;
        bind(); 
    }
  
}