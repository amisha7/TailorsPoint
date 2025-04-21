using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_measurement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            if (Request.QueryString["ProductId"] != null && Request.QueryString["ProductId"] != "")
            {
                int proid = Convert.ToInt32(Request.QueryString["ProductId"]);
                int catid = Convert.ToInt32(Request.QueryString["catid"]);
            }
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
         doorstep objreg = new doorstep();
         //doorstep obj = new doorstep();
         DataTable dt = new DataTable();
         DataTable dt2 = new DataTable();
         dt = (DataTable)Session["userdetail"];
         if (dt.Rows.Count > 0)
         {
             HiddenField1.Value = dt.Rows[0]["Id"].ToString();
         }
       
         objreg.user_id =Convert.ToInt32(HiddenField1.Value);
        objreg.name = txt_name.Text;
        objreg.emailid=txt_email.Text;
        objreg.mobile=txt_mobile.Text;
        objreg.address=txt_add.Text;
       
       
           objreg.insertmeasur(objreg);

            Label1.Text = Request.QueryString["ProductId"];
            Label2.Text = Request.QueryString["catid"];
         dt2=objreg.previousdata(objreg);
         if (dt2.Rows.Count > 0)
         {
             Label3.Text = dt2.Rows[0]["Id"].ToString();
         }
         Response.Redirect("men_product_detail.aspx?measurementId=" + Label3.Text + "&ProductId=" + Label1.Text + "&catid=" + Label2.Text + "");

    }

   
    protected void update_Click1(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        doorstep objreg = new doorstep();
        //doorstep obj = new doorstep();
        DataTable dt = new DataTable();

        dt = (DataTable)Session["userdetail"];
        if (dt.Rows.Count > 0)
        {
            HiddenField1.Value = dt.Rows[0]["Id"].ToString();
        }
        objreg.deleteold(Convert.ToInt32(HiddenField1.Value));
        
    }
    protected void previous_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        doorstep objreg = new doorstep();
        
        DataTable dt = new DataTable();
        DataTable dt2 = new DataTable();
        dt = (DataTable)Session["userdetail"];
        if (dt.Rows.Count > 0)
        {
            HiddenField1.Value = dt.Rows[0]["Id"].ToString();
        }
        objreg.user_id = Convert.ToInt32(HiddenField1.Value);
        dt2=objreg.previousdata(objreg);
        if (dt2.Rows.Count > 0)
        {
            Label1.Text = Request.QueryString["ProductId"];
            Label2.Text = Request.QueryString["catid"];
            Label3.Text = dt2.Rows[0]["Id"].ToString();
            Response.Redirect("men_product_detail.aspx?measurementId=" + Label3.Text + "&ProductId=" + Label1.Text + "&catid=" + Label2.Text + "");
        }
        else
        {
            Label4.Visible = true;
        }


    }
}