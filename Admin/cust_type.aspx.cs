using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_cust_type : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           bind();
        }
    }
    public void bind()
    {
        registration objreg = new registration();
        DataTable dt = new DataTable();
        dt = objreg.gettype();

        gridview_custtype.DataSource = dt;
        gridview_custtype.DataBind();


    }
    protected void btn_custyadd_Click(object sender, EventArgs e)
    {

        registration objreg = new registration();
        objreg.type_name = txt_custcategories.Text;
        if (btn_custyadd.Text =="Add")
        {
            objreg.inserttype(objreg);

        }
        else
        {
            objreg.Id = Convert.ToInt32(HiddenField1.Value);
            objreg.updatedata_custtype(objreg);

        }
        Response.Redirect("cust_type.aspx");
    }

    protected void gridview_custtype_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        registration objreg = new registration();
        if (e.CommandName =="Editdata_custtype")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_custtype(Id);
            if (dt.Rows.Count > 0)
            {

                HiddenField1.Value = dt.Rows[0][0].ToString();
                txt_custcategories.Text = dt.Rows[0][1].ToString();
                btn_custyadd.Text = "Update";
            }
        }
    }
    protected void btn_custcancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("cust_type.aspx");
    }





}