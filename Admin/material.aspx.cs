using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_material : System.Web.UI.Page
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
        material objreg = new material();
        DataTable dt = new DataTable();
        dt = objreg.getmaterial();

        gridview_material.DataSource = dt;
        gridview_material.DataBind();


    }

    protected void btn_materialcancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("material.aspx");
    }
    protected void btn_materialadd_Click(object sender, EventArgs e)
    {
          material objreg = new material();
        objreg.material_nm = txt_material.Text;
        if (btn_materialadd.Text == "Add")
        {
            objreg.insertmaterial(objreg);

        }
        else
        {
            objreg.Id = Convert.ToInt32(HiddenField1.Value);
            objreg.updatedata_material(objreg);

        }
        Response.Redirect("material.aspx");
    }
    protected void gridview_material_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        material objreg = new material();
        if (e.CommandName == "Editdata_material")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_material(Id);
            if (dt.Rows.Count > 0)
            {

                HiddenField1.Value = dt.Rows[0][0].ToString();
                txt_material.Text = dt.Rows[0][1].ToString();
                btn_materialadd.Text = "Update";
            }
        }
        else if (e.CommandName == "Deletedata_material")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }
    }
}
