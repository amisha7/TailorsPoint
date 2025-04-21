using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_editprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindcountry();
            
            if (Session["email"] == null || Session["email"] == "")
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                DataTable dt =new DataTable();
                dt = (DataTable)Session["userdetail"];
                if (dt.Rows.Count > 0)
                {
                    HiddenField1.Value = dt.Rows[0]["Id"].ToString();
                    txt_fname.Text = dt.Rows[0]["fname"].ToString();
                    txt_mname.Text = dt.Rows[0]["mname"].ToString();
                    txt_lname.Text = dt.Rows[0]["lname"].ToString();
                    rbt_gender.SelectedValue = dt.Rows[0]["gender"].ToString();
                    txt_address.Text = dt.Rows[0]["address"].ToString();
                    drop_country.SelectedValue = dt.Rows[0]["countryid"].ToString();
                    bindstate(); 
                    dp_state.SelectedValue = dt.Rows[0]["stateid"].ToString();
                    bindcity();
                    dp_city.SelectedValue = dt.Rows[0]["cityid"].ToString();
                    txt_contact.Text = dt.Rows[0]["contactno"].ToString();
                    txt_email.Text = dt.Rows[0]["emailid"].ToString();
                }
                
            }
        }
    }
    public void bindcountry()
    {
        state objreg = new state();
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
        dt = objreg.GetstateBycountryID(Convert.ToInt32(drop_country.SelectedValue));

        dp_state.DataSource = dt;
        dp_state.DataTextField = "state_nm";
        dp_state.DataValueField = "Id";
        dp_state.DataBind();
        dp_state.Items.Insert(0, "--Select State Name--");
    }
    public void bindcity()
    {
        user_reg objreg = new user_reg();
        DataTable dt = new DataTable();
        dt = objreg.GetcityBystateID(Convert.ToInt32(dp_state.SelectedValue));

        dp_city.DataSource = dt;
        dp_city.DataTextField = "city_nm";
        dp_city.DataValueField = "Id";
        dp_city.DataBind();
        dp_city.Items.Insert(0, "--Select City Name--");
    }
    protected void drop_country_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindstate();
    }
    protected void dp_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindcity();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        user_reg obj = new user_reg();
        obj.Id = Convert.ToInt32(HiddenField1.Value);
        obj.fname = txt_fname.Text;
        obj.mname = txt_mname.Text;
        obj.lname = txt_lname.Text;
        obj.gender = rbt_gender.SelectedValue;
        obj.address = txt_address.Text;
        obj.countryid = Convert.ToInt32(drop_country.SelectedValue);
        obj.stateid = Convert.ToInt32(dp_state.SelectedValue);
        obj.cityid = Convert.ToInt32(dp_city.SelectedValue);
        obj.contactno = txt_contact.Text;
        obj.emailid = txt_email.Text;
        obj.updatedata_profile(obj);
         
        DataTable dt = new DataTable();

        dt = obj.detail(obj.Id);
        if (dt.Rows.Count > 0)
        {
            Session["userdetail"] = dt;
        }
        Response.Redirect("myprofile.aspx");
    }
}