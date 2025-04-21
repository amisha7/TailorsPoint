using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class Admin_subadmin_reg : System.Web.UI.Page
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
        admin_reg obj = new admin_reg();
        DataTable dt = new DataTable();
        dt = obj.getreg();

        gridview_reg.DataSource = dt;
        gridview_reg.DataBind();


    }


    protected void btn_regadd_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = drop_usertype.SelectedValue;

        admin_reg obj = new admin_reg();
        obj.fname = txt_fname.Text;
        obj.lname = txt_lname.Text;
        obj.email = txt_email.Text;
        obj.password1 = txt_password.Text;
        
        obj.address1 = txt_address.Text;
        if (btn_regadd.Text == "Add")
        {

            string filename = string.Empty;
            string fexte = Path.GetExtension(FileUpload1.FileName);
            if (fexte == ".jpg" || fexte == ".jpeg" || fexte == ".png")
            {
                filename = Path.GetFileName(FileUpload1.FileName);
                string path = Server.MapPath("images/") + filename;
                FileUpload1.SaveAs(path);
                obj.image1 = filename;
            }
            else
            {
                obj.image1 = filename;
            }


            obj.usertype = Convert.ToInt32(HiddenField1.Value);
            obj.isactive = 1;
            obj.insertreg(obj);

        }
        else
        {



            obj.usertype = Convert.ToInt32(HiddenField1.Value);
            obj.Id = Convert.ToInt32(HiddenField2.Value);
            if (FileUpload1.HasFile)
            {
                string fexte = Path.GetExtension(FileUpload1.FileName);
                if (fexte == ".jpg" || fexte == ".jpeg" || fexte == ".png")
                {
                    string filename = Path.GetFileName(FileUpload1.FileName);
                    string path = Server.MapPath("images/") + filename;
                    FileUpload1.SaveAs(path);
                    obj.image1 = filename;
                }
            }
            else
            {

                obj.image1 = HiddenField3.Value;
            }

            obj.updatedata_reg(obj);
        }

        bind();
        btn_regadd.Text = "Add";

        Response.Redirect("subadmin_reg.aspx");
    }

    protected void btn_regcancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("subadmin_reg.aspx");
    }
    protected void gridview_material_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        admin_reg objreg = new admin_reg();
        HiddenField1.Value = drop_usertype.SelectedValue;

        if (e.CommandName == "Editdata_admin")
        {

            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_reg(Id);
            if (dt.Rows.Count > 0)
            {

                HiddenField2.Value = dt.Rows[0][0].ToString();
                txt_fname.Text = dt.Rows[0][1].ToString();
                txt_lname.Text = dt.Rows[0][2].ToString();
                txt_email.Text = dt.Rows[0][3].ToString();
                txt_password.Text = dt.Rows[0][4].ToString();
                txt_confirmpwd.Text = dt.Rows[0][4].ToString();
                txt_address.Text = dt.Rows[0][5].ToString();
                HiddenField3.Value = dt.Rows[0][6].ToString();


                drop_usertype.SelectedValue = dt.Rows[0][7].ToString();
                btn_regadd.Text = "Update";
            }
        }
        else if (e.CommandName == "isactivedata")
        {
             int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_reg(Id);
            if (dt.Rows.Count > 0)
            {

             objreg.isactive=1;
             objreg.Id = Convert.ToInt32(dt.Rows[0][0].ToString());
             objreg.fname = dt.Rows[0][1].ToString();
             objreg.lname = dt.Rows[0][2].ToString();
             objreg.email = dt.Rows[0][3].ToString();
             objreg.password1 = dt.Rows[0][4].ToString();
             objreg.address1 = dt.Rows[0][5].ToString();
             objreg.image1 = dt.Rows[0][6].ToString();
             objreg.usertype = Convert.ToInt32(dt.Rows[0][7]);

             

             objreg.updatedata_reg(objreg);
             Response.Redirect("subadmin_reg.aspx");
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
                objreg.Id =Convert.ToInt32(dt.Rows[0][0].ToString());
                objreg.fname= dt.Rows[0][1].ToString();
                objreg.lname = dt.Rows[0][2].ToString();
                objreg.email = dt.Rows[0][3].ToString();
                objreg.password1 = dt.Rows[0][4].ToString();
                objreg.address1 = dt.Rows[0][5].ToString();
                objreg.image1= dt.Rows[0][6].ToString();
                objreg.usertype = Convert.ToInt32(dt.Rows[0][7]);


                
                objreg.updatedata_reg(objreg);
                Response.Redirect("subadmin_reg.aspx");
            }
        }

       
    }

   
}