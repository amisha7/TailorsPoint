using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_product_size : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindsize();
            bind();
        }
    }
    public void bind()
    {
        size obj = new size();
        DataTable dt = new DataTable();
        dt = obj.getsize();

        gridview_size.DataSource = dt;
        gridview_size.DataBind();


    }
    public void bindsize()
    {
        size objreg = new size();
        DataTable dt = new DataTable();
        dt = objreg.GetsizeData1();

        drop_cloth.DataSource = dt;
        drop_cloth.DataTextField = "cloth_category";
        drop_cloth.DataValueField = "Id";
        drop_cloth.DataBind();
        drop_cloth.Items.Insert(0, "--Select Cloth Type--");
    }

  


    protected void btn_clothadd_Click(object sender, EventArgs e)
    {


        HiddenField1.Value = drop_cloth.SelectedValue;
        size obj = new size();
        obj.cloth_size = txt_productsize.Text;
        if (btn_clothadd.Text == "Add")
        {

            obj.cloth_id= Convert.ToInt32(HiddenField1.Value);

            obj.insertsize(obj);

        }
        else
        {
            obj.cloth_id = Convert.ToInt32(HiddenField1.Value);
            obj.Id = Convert.ToInt32(HiddenField2.Value);
            obj.updatedata_size(obj);
        }



        Response.Redirect("product_size.aspx");
    }

    protected void gridview_size_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        size objreg = new size();
        if (e.CommandName == "Editdata_size")
        {

            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_size(Id);
            if (dt.Rows.Count > 0)
            {

                HiddenField2.Value = dt.Rows[0][0].ToString();
                drop_cloth.SelectedValue = dt.Rows[0][1].ToString();
                txt_productsize.Text = dt.Rows[0][2].ToString();
                btn_clothadd.Text = "Update";
            }
        }
        else if (e.CommandName == "Deletedata_size")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }

    }
}