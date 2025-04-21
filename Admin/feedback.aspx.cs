using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if(!IsPostBack)
         {
             bind();
         }
  
    }
     public void bind()
    {
        feedback objreg = new feedback();
        DataTable dt = new DataTable();
        dt = objreg.getfeedback();

        gridview_feedback.DataSource = dt;
        gridview_feedback.DataBind();


    }


    protected void gridview_feedback_RowCommand(object sender, GridViewCommandEventArgs e)
    {
          feedback objreg = new feedback();
        
         if (e.CommandName == "Deletedata_feedback")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }

    }

    
}