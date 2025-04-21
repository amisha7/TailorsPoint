using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class Admin_change_style : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bindstyle();
            bind();
          
        }
    }
    public void bind()
    {
        style obj = new style();
        DataTable dt = new DataTable();
        dt = obj.getstyle();

        gridview_style.DataSource = dt;
        gridview_style.DataBind();


    }
    public void bindstyle()
    {
        style objreg = new style();
        DataTable dt = new DataTable();
        dt = objreg.GetData1();

        drop_change.DataSource = dt;
        drop_change.DataTextField = "name";
        drop_change.DataValueField = "Id";
        drop_change.DataBind();
        drop_change.Items.Insert(0, "--Select style--");
    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = drop_change.SelectedValue;

        style obj = new style();
        obj.s_name = txt_name.Text;


        string filename = string.Empty;
        string fexte = Path.GetExtension(file_image.FileName);
        if (fexte == ".jpg" || fexte == ".jpeg" || fexte == ".png")
        {
            filename = Path.GetFileName(file_image.FileName);
            string path = Server.MapPath("images/") + filename;
            file_image.SaveAs(path);
            obj.image1 = filename;
        }

        else
        {
            obj.image1 = filename;
        }


        obj.style_id = Convert.ToInt32(HiddenField1.Value);

        obj.insertstyle(obj);
        Response.Redirect("change_style.aspx");
    }

    protected void gridview_style_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        style objreg = new style();
        if (e.CommandName == "Deletedata_style")
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