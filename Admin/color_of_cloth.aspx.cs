using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_color_of_cloth : System.Web.UI.Page
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
        color objreg = new color();
        DataTable dt = new DataTable();
        dt = objreg.getcolor();

        gridview_color.DataSource = dt;
        gridview_color.DataBind();


    }

    protected void btn_colorcancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("color_of_cloth.aspx");
    }
    protected void btn_coloradd_Click(object sender, EventArgs e)
    {

        color objreg = new color();
        objreg.color1 = txt_clrname.Text;
        if (btn_coloradd.Text == "Add")
        {
            objreg.insertcolor(objreg);

        }
        else
        {
            objreg.Id = Convert.ToInt32(HiddenField1.Value);
            objreg.updatedata_color(objreg);

        }
        Response.Redirect("color_of_cloth.aspx");
    }
    protected void gridview_color_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        color objreg = new color();
        if (e.CommandName == "Editdata_color")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_color(Id);
            if (dt.Rows.Count > 0)
            {

                HiddenField1.Value = dt.Rows[0][0].ToString();
                txt_clrname.Text = dt.Rows[0][1].ToString();
                btn_coloradd.Text = "Update";
            }
        }
        else if (e.CommandName == "Deletedata_color")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }

    }
}