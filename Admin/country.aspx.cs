using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_country : System.Web.UI.Page
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
        country objreg = new country();
        DataTable dt = new DataTable();
        dt = objreg.getcountry();

      gridview_country.DataSource = dt;
      gridview_country.DataBind();


    }
    
    protected void btn_countryadd_Click(object sender, EventArgs e)
    {
        country objreg = new country();
        objreg.country_nm = txt_countryname.Text;
        if (btn_countryadd.Text == "Add")
        {
            objreg.insertcountry(objreg);

        }
        else
        {
            objreg.Id = Convert.ToInt32(HiddenField1.Value);
            objreg.updatedata_country(objreg);

        }
        Response.Redirect("country.aspx");
    }
protected void btn_countrycancel_Click(object sender, EventArgs e)
{
    Response.Redirect("country.aspx");
}


protected void gridview_country_RowCommand(object sender, GridViewCommandEventArgs e)
{
    country objreg = new country();
        if (e.CommandName == "Editdata_country")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_country(Id);
            if (dt.Rows.Count > 0)
            {

                HiddenField1.Value = dt.Rows[0][0].ToString();
                txt_countryname.Text = dt.Rows[0][1].ToString();
                btn_countryadd.Text = "Update";
            }
        }
        else if (e.CommandName == "Deletedata_country")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }
}
}