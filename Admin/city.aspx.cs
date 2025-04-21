using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_city : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
            bindcountry();
           
         
           
        }
    }
    public void bind()
    {
        city obj = new city();
        DataTable dt = new DataTable();
        dt = obj.getcity();

        gridview_city.DataSource = dt;
        gridview_city.DataBind();


    }

        
    public void bindcountry()
    {
       city objreg = new city();
        DataTable dt = new DataTable();
        dt = objreg.GetCountryData();

       drop_country.DataSource = dt;
        drop_country.DataTextField = "country_nm";
       drop_country.DataValueField = "Id";
       drop_country.DataBind();
        drop_country.Items.Insert(0, "--Select Country Name--");
    }
    public void bindstate()
    {
        city objreg = new city();
        DataTable dt = new DataTable();
        dt = objreg.GetStateData();

        drop_state.DataSource = dt;
        drop_state.DataTextField = "state_nm";
        drop_state.DataValueField = "Id";
        drop_state.DataBind();
        drop_state.Items.Insert(0, "--Select State Name--");
    }

    
    protected void btn_cityadd_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = drop_country.SelectedValue;
        HiddenField3.Value = drop_state.SelectedValue;
        city obj = new city();
        obj.city_nm = txt_city.Text;
        if (btn_cityadd.Text == "Add" &&  btn_cityadd.Text!=null  && drop_country.SelectedIndex!=0 && drop_state.SelectedIndex!=0)
        {

            obj.country_id = Convert.ToInt32(HiddenField1.Value);
            obj.state_id = Convert.ToInt32(HiddenField3.Value);
            obj.insertcity(obj);

        }
        else if (btn_citycancel.Text == "cancel")
        {
            obj.country_id = Convert.ToInt32(HiddenField1.Value);
            obj.state_id = Convert.ToInt32(HiddenField3.Value);
            obj.Id = Convert.ToInt32(HiddenField2.Value);
            obj.updatedata_city(obj);
        }
       



        Response.Redirect("city.aspx");
    }
    protected void gridview_city_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        city objreg = new city();
        if (e.CommandName == "Editdata_city")
        {

            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_city(Id);
            if (dt.Rows.Count > 0)
            {

                HiddenField2.Value = dt.Rows[0][0].ToString();
                drop_country.SelectedValue = dt.Rows[0][1].ToString();
                bindstate();
                drop_state.SelectedValue = dt.Rows[0][2].ToString();

                txt_city.Text = dt.Rows[0][3].ToString();
                btn_cityadd.Text = "Update";
            }
        }
        else if (e.CommandName == "Deletedata_city")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }

    }

   

  

    protected void drop_country_SelectedIndexChanged(object sender, EventArgs e)
    {
        city objreg = new city();
        DataTable dt = new DataTable();
        HiddenField4.Value = drop_country.SelectedValue;
        dt = objreg.GetstateBycountryID(Convert.ToInt32(HiddenField4.Value));

        drop_state.DataSource = dt;
        drop_state.DataTextField = "state_nm";
        drop_state.DataValueField = "Id";
        drop_state.DataBind();
        drop_state.Items.Insert(0, "--Select State Name--");
    }
}