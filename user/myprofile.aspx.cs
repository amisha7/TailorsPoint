using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_myprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null || Session["email"] == "")
        {
            Response.Redirect("home.aspx");
        }
        else
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["userdetail"];
            if (dt.Rows.Count > 0)
            {
                txt_name.Text = dt.Rows[0]["fname"].ToString() +" " + dt.Rows[0]["mname"].ToString() +" " + dt.Rows[0]["lname"].ToString();
                txt_gender.Text = dt.Rows[0]["gender"].ToString();
                txt_address.Text = dt.Rows[0]["address"].ToString();
             /*   txt_country.Text = dt.Rows[0]["countryid"].ToString();
                txt_state.Text = dt.Rows[0]["stateid"].ToString();
                txt_city.Text = dt.Rows[0]["cityid"].ToString();*/
                txt_contact.Text = dt.Rows[0]["contactno"].ToString();
                txt_email.Text = dt.Rows[0]["emailid"].ToString();
                int countryid = Convert.ToInt16(dt.Rows[0]["countryid"]);
                int stateid= Convert.ToInt16(dt.Rows[0]["stateid"]);
                int cityid = Convert.ToInt16(dt.Rows[0]["cityid"]);
                user_reg obj = new user_reg();
                dt=obj.getcountrydetail(countryid,stateid,cityid);
                if (dt.Rows.Count > 0)
                {
                    txt_country.Text = dt.Rows[0]["country_nm"].ToString();
                    txt_state.Text = dt.Rows[0]["state_nm"].ToString();
                    txt_city.Text = dt.Rows[0]["city_nm"].ToString();
                }

            }
        }
    }
}