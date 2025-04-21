using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_fabric_design : System.Web.UI.Page
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
        fabric objreg = new fabric();
        DataTable dt = new DataTable();
        dt = objreg.getdesign();

        gridview_design.DataSource = dt;
        gridview_design.DataBind();


    }

    protected void btn_fabricadd_Click(object sender, EventArgs e)
    {
        fabric objreg = new fabric();
        objreg.design1 = txt_fabric.Text;
        if (btn_fabricadd.Text == "Add")
        {
            objreg.insertdesign(objreg);

        }
        else
        {
            objreg.Id = Convert.ToInt32(HiddenField1.Value);
            objreg.updatedata_design(objreg);

        }
        Response.Redirect("fabric_design.aspx");
    }
    protected void btn_fabriccancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("fabric_design.aspx");
    }
    protected void gridview_design_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        fabric objreg = new fabric();
        if (e.CommandName == "Editdata_design")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_design(Id);
            if (dt.Rows.Count > 0)
            {

                HiddenField1.Value = dt.Rows[0][0].ToString();
                txt_fabric.Text = dt.Rows[0][1].ToString();
                btn_fabricadd.Text = "Update";
            }
        }
        else if (e.CommandName == "Deletedata_design")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }
    }
}