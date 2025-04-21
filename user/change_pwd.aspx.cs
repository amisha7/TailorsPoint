using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_change_pwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"] == null || Session["password1"] == null)
        {
            Response.Redirect("home.aspx");


        }
        else
        {

            txt_email.Text = Session["email"].ToString();

        }



    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
         user_reg objreg = new user_reg();

        DataTable dt = new DataTable();
        dt = objreg.getpwd(txt_email.Text);
        if (dt.Rows.Count > 0)
        {
            lbl_tmp.Text = dt.Rows[0]["password1"].ToString();
            if (lbl_tmp.Text == txt_pwd.Text)
            {
                objreg.password1 = txt_new.Text;
                objreg.updatepwd(txt_email.Text, txt_new.Text);
                Response.Write("<Script> alert('Your Password Change Succefully!!')</Script>");
                lblerrormsg.Visible = false;

            }
            else
            {
                lblerrormsg.Visible = true;                
            }

        }

    }
    
}