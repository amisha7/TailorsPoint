using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_feedback : System.Web.UI.Page
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
        DataTable dt = new DataTable();
        feedback obj = new feedback();
        dt = obj.getfeedback1();
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {

        feedback objreg = new feedback();
        objreg.name = TextBox1.Text;
        objreg.emailid = TextBox2.Text;
        objreg.comment = TextBox4.Text;
        if (btn_submit.Text == "Post Comment")
        {
            objreg.insertfeedback(objreg);

        }
        
        Response.Redirect("feedback.aspx");

    }
}