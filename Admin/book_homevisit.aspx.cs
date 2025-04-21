using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_book_homevisit : System.Web.UI.Page
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
        doorstep objreg = new doorstep();
        DataTable dt = new DataTable();
        dt = objreg.getdoorstep();

        gridview_measurement.DataSource = dt;
        gridview_measurement.DataBind();


    }

   
}