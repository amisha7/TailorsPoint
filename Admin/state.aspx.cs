using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_state : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bindcust();
            bind();
        }
    }
    public void bind()
    {
        state obj = new state();
        DataTable dt = new DataTable();
        dt = obj.getstate();

        gridview_state.DataSource = dt;
        gridview_state.DataBind();


    }

        
    public void bindcust()
    {
        state objreg = new state();
        DataTable dt = new DataTable();
        dt = objreg.GetCountryData();

        drop_country_state.DataSource = dt;
        drop_country_state.DataTextField = "country_nm";
        drop_country_state.DataValueField = "Id";
        drop_country_state.DataBind();
        drop_country_state.Items.Insert(0, "--Select Country Name--");
    }

    
    protected void gridview_state_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        state objreg = new state();
        if (e.CommandName == "Editdata_state")
        {

            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_state(Id);
            if (dt.Rows.Count > 0)
            {

                HiddenField2.Value = dt.Rows[0][0].ToString();
                drop_country_state.SelectedValue = dt.Rows[0][1].ToString();
                txt_state.Text= dt.Rows[0][2].ToString();
                btn_stateadd.Text = "Update";
            }
        }
        else if (e.CommandName == "Deletedata_state")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }

    }
    protected void btn_stateadd_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = drop_country_state.SelectedValue;
        state obj = new state();
        obj.state_nm = txt_state.Text;
        if (btn_stateadd.Text == "Add")
        {

            obj.country_id = Convert.ToInt32(HiddenField1.Value);

            obj.insertstate(obj);

        }
        else
        {
            obj.country_id = Convert.ToInt32(HiddenField1.Value);
            obj.Id = Convert.ToInt32(HiddenField2.Value);
            obj.updatedata_state(obj);
        }



        Response.Redirect("state.aspx");
    }
    protected void btn_statecancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("state.aspx");
    }
}