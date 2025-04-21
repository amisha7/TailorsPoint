using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;



public partial class Admin_forget_pwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
         admin_reg objreg = new admin_reg();
        DataTable dt = new DataTable();
        dt = objreg.getemail(txt_email.Text);
        if (dt.Rows.Count > 0)
        {
            if (txt_email.Text == dt.Rows[0]["email"].ToString())
            {

                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("patelamisha212@gmail.com"); //you have to provide your gmail address as from address
                mail.To.Add(txt_email.Text);
                mail.Subject = "Test";
                mail.Body = "password " + dt.Rows[0]["password1"].ToString();

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new NetworkCredential("patelamisha212@gmail.com", "ami261096"); //you have to provide you gamil username and password
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
            }

        }
        else
        {

            Response.Write("<Script> alert('Invalid Emailid!!')</Script>");
        }

    }

    }
