using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            trend obj = new trend();
            DataTable dt = new DataTable();

            dt = obj.gettrenddetail();
            //Repeater1.DataSource = dt;
            //Repeater1.DataBind();

            //Repeater2.DataSource = dt;
            //Repeater2.DataBind();
        }

    }
}