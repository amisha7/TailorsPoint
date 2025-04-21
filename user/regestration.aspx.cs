using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_regestration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindcountry();
            
           
        }
      
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        user_reg obj = new user_reg();
        HiddenField3.Value = dp_country.SelectedValue;
        HiddenField4.Value = dp_state.SelectedValue;
        HiddenField5.Value = dp_city.SelectedValue;
        obj.fname = txt_fname.Text;
        obj.mname = txt_mname.Text;
        obj.lname = txt_lname.Text;
        obj.gender = rbt_gender.SelectedValue;
        obj.address = txt_address.Text;
        obj.countryid = Convert.ToInt32(HiddenField3.Value);
        obj.stateid = Convert.ToInt32(HiddenField4.Value);
        obj.cityid = Convert.ToInt32(HiddenField5.Value);
        obj.contactno = txt_contact.Text;
        obj.emailid = txt_email.Text;
        obj.password1 = txt_password.Text;

   
        obj.insertreg(obj);
        Response.Redirect("regestration.aspx");

    }
    public void bindcountry()
    {
        state objreg = new state();
        DataTable dt = new DataTable();
        dt = objreg.GetCountryData();

        dp_country.DataSource = dt;
        dp_country.DataTextField = "country_nm";
        dp_country.DataValueField = "Id";
        dp_country.DataBind();
        dp_country.Items.Insert(0, "--Select Country Name--");
    }
   
   

    protected void dp_country_SelectedIndexChanged(object sender, EventArgs e)
    {
        city objreg = new city();
        DataTable dt = new DataTable();
        HiddenField1.Value = dp_country.SelectedValue;
        dt = objreg.GetstateBycountryID(Convert.ToInt32(HiddenField1.Value));

        dp_state.DataSource = dt;
        dp_state.DataTextField = "state_nm";
        dp_state.DataValueField = "Id";
        dp_state.DataBind();
        dp_state.Items.Insert(0, "--Select State Name--");
    }
    protected void dp_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        user_reg objreg = new user_reg();
        DataTable dt = new DataTable();
        HiddenField2.Value = dp_state.SelectedValue;
        dt = objreg.GetcityBystateID(Convert.ToInt32(HiddenField2.Value));

        dp_city.DataSource = dt;
        dp_city.DataTextField = "city_nm";
        dp_city.DataValueField = "Id";
        dp_city.DataBind();
        dp_city.Items.Insert(0, "--Select City Name--");
    }
   
}