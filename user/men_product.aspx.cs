using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_men_product : System.Web.UI.Page
{
    int catid = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if(!IsPostBack)
        {
            if (Request.QueryString["SubCatId"] != null && Request.QueryString["SubCatId"] != "")
            {
                catid = Convert.ToInt32(Request.QueryString["SubCatId"]);
                DataTable dt = new DataTable();
                product obj = new product();
                dt = obj.getproductbysubcatid(catid);
                Repeater4.DataSource = dt;
                Repeater4.DataBind();

            }
            else
            {
                Response.Redirect("Home.aspx");
            }

            bindcolor();
            binddesign();
            bindmaterial();
        }
    }
    public void bindcolor()
    {
        color cl = new color();
        DataTable dt = new DataTable();
        dt = cl.getuspcolor();
        rdoColor.DataSource = dt;
        rdoColor.DataTextField = "color";
        rdoColor.DataValueField = "Id";
        rdoColor.DataBind();
    }
    public void binddesign()
    {
        fabric f1 = new fabric();
        DataTable dt = new DataTable();
        dt = f1.getuspdesign();
        rddesign.DataSource = dt;
        rddesign.DataTextField = "design";
        rddesign.DataValueField = "Id";
        rddesign.DataBind();


    }
    public void bindmaterial()
    {
        material m1 = new material();
        DataTable dt = new DataTable();
        dt = m1.getuspmaterial();
        rdmaterial.DataSource = dt;
        rdmaterial.DataTextField = "material_nm";
        rdmaterial.DataValueField = "Id";
        rdmaterial.DataBind();


    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton lbtn = (LinkButton)sender;
        RepeaterItem item = (RepeaterItem)lbtn.NamingContainer;
        Label txt = (Label)item.FindControl("lbl_pro");
        Label txt1 = (Label)item.FindControl("lbl_cat"); 
        Response.Redirect("men_product_detail.aspx?ProductId="+txt.Text+"&catid="+txt1.Text+"");
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        apply f1 = new apply();
        DataTable dt = new DataTable();
        HiddenField1.Value = amount.Text;
        string price1 = HiddenField1.Value;
        string[] p = price1.Split('-');
        HiddenField2.Value = p[0];
        HiddenField3.Value = p[1];
        catid = Convert.ToInt32(Request.QueryString["SubCatId"]);
        dt = f1.getuspapply(rd_wear.SelectedValue, rdoColor.SelectedValue, rddesign.SelectedValue, rdmaterial.SelectedValue,catid,Convert.ToInt32(HiddenField2.Value),Convert.ToInt32(HiddenField3.Value));
        Repeater4.DataSource = dt;
        Repeater4.DataBind();
        if (dt.Rows.Count > 0)
        {
            Repeater4.DataSource = dt;
            Repeater4.DataBind();
            match.Visible = false;
            
        }
        else
        {
            match.Text = "No Match Found";
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton lbtn = (LinkButton)sender;
        RepeaterItem item = (RepeaterItem)lbtn.NamingContainer;
        Label txt = (Label)item.FindControl("lbl_pro");
        Label txt1 = (Label)item.FindControl("lbl_cat");
        Response.Redirect("men_product_detail.aspx?ProductId=" + txt.Text + "&catid=" + txt1.Text + "");
    
    }
}