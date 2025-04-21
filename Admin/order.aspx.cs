using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_order : System.Web.UI.Page
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
        checkout objreg = new checkout();
        DataTable dt = new DataTable();
        dt = objreg.getorder();

        gridview_order.DataSource = dt;
        gridview_order.DataBind();


    }


    protected void gridview_order_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        checkout objreg = new checkout();
        if (e.CommandName == "pendingdata")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.selectorder_status(Id);
            if (dt.Rows.Count > 0)
            {

                objreg.order_status = 0;


                objreg.updatedata_order(objreg.order_status,Id);
                dt=objreg.getorder();
                Response.Redirect("order.aspx");


            }
        }
else if (e.CommandName == "processingdata")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.selectorder_status(Id);
            if (dt.Rows.Count > 0)
            {

                objreg.order_status = 1;


                objreg.updatedata_order(objreg.order_status, Id);
                dt = objreg.getorder();
                Response.Redirect("order.aspx");


            }
        }
   else if (e.CommandName == "delivereddata")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.selectorder_status(Id);
            if (dt.Rows.Count > 0)
            {

                objreg.order_status = 2;


                objreg.updatedata_order(objreg.order_status, Id);
                dt = objreg.getorder();
                Response.Redirect("order.aspx");


            }
        }
  else if (e.CommandName == "returneddata")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.selectorder_status(Id);
            if (dt.Rows.Count > 0)
            {

                objreg.order_status = 3;


                objreg.updatedata_order(objreg.order_status, Id);
                dt = objreg.getorder();
                Response.Redirect("order.aspx");


            }
        }
    }
}
