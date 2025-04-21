using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_cloth_category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // bindcust();
           bind();
        }
    }
    public void bind()
    {
        cloth obj = new cloth();
        DataTable dt = new DataTable();
        dt = obj.getcloth();

        gridview_cloth.DataSource = dt;
        gridview_cloth.DataBind();


    }

        
    public void bindcust()
    {
        cloth objreg = new cloth();
        DataTable dt = new DataTable();
        dt = objreg.GetCustData();
        drop_custtype.DataSource = dt;
        drop_custtype.DataTextField = "type_name";
        drop_custtype.DataValueField = "Id";
        drop_custtype.DataBind();
        drop_custtype.Items.Insert(0, "--Select Cust Category--");
    }


    protected void btn_clothadd_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = drop_custtype.SelectedValue;
        cloth obj = new cloth();
        obj.cloth_category = txt_clothcategory.Text;
        if (btn_clothadd.Text == "Add")
        {

            obj.cust_type_id = Convert.ToInt32(HiddenField1.Value);

            obj.insertcloth(obj);

        }
        else
        {
            obj.cust_type_id = Convert.ToInt32(HiddenField1.Value);
            obj.Id = Convert.ToInt32(HiddenField2.Value);
            obj.updatedata_cloth(obj);
        }
       
          
           
        Response.Redirect("cloth_category.aspx");
    }

    protected void gridview_cloth_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        cloth objreg = new cloth();
        if (e.CommandName == "Editdata_cloth")
        {

            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_cloth(Id);
            if (dt.Rows.Count > 0)
            {

                HiddenField2.Value = dt.Rows[0][0].ToString();
                txt_clothcategory.Text = dt.Rows[0][2].ToString();
                btn_clothadd.Text = "Update";
            }
        }
        else if (e.CommandName == "Deletedata_cloth")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }

    }
}