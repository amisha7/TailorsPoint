using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_cust_detail : System.Web.UI.Page
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
        user_reg obj = new user_reg();
        DataTable dt = new DataTable();
        dt = obj.getreg();

        gridview_cust.DataSource = dt;
        gridview_cust.DataBind();


    }

    protected void gridview_cust_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        user_reg objreg = new user_reg();
        if (e.CommandName == "isactivedata")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_reg(Id);
            if (dt.Rows.Count > 0)
            {

                objreg.isactive = 1;
                objreg.Id = Convert.ToInt32(dt.Rows[0][0].ToString());
                objreg.fname = dt.Rows[0][1].ToString();
                objreg.mname = dt.Rows[0][2].ToString();
                objreg.lname = dt.Rows[0][3].ToString();
                objreg.gender = dt.Rows[0][4].ToString();
                objreg.address = dt.Rows[0][5].ToString();
                objreg.countryid = Convert.ToInt32(dt.Rows[0][6]);
                objreg.stateid = Convert.ToInt32(dt.Rows[0][7]);
                objreg.cityid = Convert.ToInt32(dt.Rows[0][8]);
                objreg.contactno = dt.Rows[0][9].ToString();
                objreg.emailid = dt.Rows[0][10].ToString();
                objreg.password1 = dt.Rows[0][11].ToString();



                objreg.updatereg(objreg);
                Response.Redirect("cust_detail.aspx");
            }
        }
        else if (e.CommandName == "deactivedata")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_reg(Id);
            if (dt.Rows.Count > 0)
            {

                objreg.isactive = 0;
                objreg.Id = Convert.ToInt32(dt.Rows[0][0].ToString());
                objreg.fname = dt.Rows[0][1].ToString();
                objreg.mname = dt.Rows[0][2].ToString();
                objreg.lname = dt.Rows[0][3].ToString();
                objreg.gender = dt.Rows[0][4].ToString();
                objreg.address = dt.Rows[0][5].ToString();
                objreg.countryid = Convert.ToInt32(dt.Rows[0][6]);
                objreg.stateid = Convert.ToInt32(dt.Rows[0][7]);
                objreg.cityid = Convert.ToInt32(dt.Rows[0][8]);
                objreg.contactno = dt.Rows[0][9].ToString();
                objreg.emailid = dt.Rows[0][10].ToString();
                objreg.password1 = dt.Rows[0][11].ToString();



                objreg.updatereg(objreg);
                Response.Redirect("cust_detail.aspx");
            }
        }
    }
}