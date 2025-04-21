using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_product_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindcolor();
            binddesign();
            bindmaterial();
            bind();
          //  bindcloth();

        }
    }
    public void bindcloth()
    {
        product objreg = new product();
        DataTable dt = new DataTable();
        dt = objreg.GetclothData();

        drop_cloth.DataSource = dt;
        drop_cloth.DataTextField = "cloth_category";
        drop_cloth.DataValueField = "Id";
        drop_cloth.DataBind();
        drop_cloth.Items.Insert(0, "--Select Cloth Categories--");
    }
    public void bind()
    {
        product obj = new product();
        DataTable dt = new DataTable();
        dt = obj.getreg();
       
        gridview_product.DataSource = dt;
        gridview_product.DataBind();


    }


    public void bindcolor()
    {
        product objreg = new product();
        DataTable dt = new DataTable();

        dt = objreg.GetColorData();
        drop_color.DataSource = dt;
        drop_color.DataTextField = "color";
        drop_color.DataValueField = "Id";
        drop_color.DataBind();
        drop_color.Items.Insert(0, "--Select Color--");
    }
    public void binddesign()
    {
        product objreg = new product();
        DataTable dt = new DataTable();

        dt = objreg.GetDesignData();
        drop_design.DataSource = dt;
        drop_design.DataTextField = "design";
        drop_design.DataValueField = "Id";
        drop_design.DataBind();
        drop_design.Items.Insert(0, "--Select Design----");
    }
    public void bindmaterial()
    {
        product objreg = new product();
        DataTable dt = new DataTable();

        dt = objreg.GetMaterialData();
        drop_material.DataSource = dt;
        drop_material.DataTextField = "material_nm";
        drop_material.DataValueField = "Id";
        drop_material.DataBind();
        drop_material.Items.Insert(0, "--Select Material----");
    }



    protected void btn_add_Click(object sender, EventArgs e)
    {



        product objreg = new product();
        objreg.category = drop_custtype.SelectedValue;
        objreg.sub_cat = drop_cloth.SelectedValue;
        objreg.name = txt_name.Text;
        objreg.price = Convert.ToInt32(txt_price.Text);
        objreg.pro_des = txt_des.Text;
        HiddenField5.Value = drop_cat.SelectedValue;
        HiddenField6.Value = drop_color.SelectedValue;
        HiddenField7.Value = drop_design.SelectedValue;
        HiddenField8.Value = drop_material.SelectedValue;

        objreg.pro_cat = HiddenField5.Value;

        objreg.pro_color = HiddenField6.Value;
        objreg.pro_design = HiddenField7.Value;
        objreg.pro_material = HiddenField8.Value;



        if (btn_add.Text == "Add")
        {
            string filename = string.Empty;
            string fexte = Path.GetExtension(file_front.FileName);
            if (fexte == ".jpg" || fexte == ".jpeg" || fexte == ".png")
            {
                filename = Path.GetFileName(file_front.FileName);
                string path = Server.MapPath("images/") + filename;
                file_front.SaveAs(path);
                objreg.pro_front = filename;
            }
            else if (!file_front.HasFile)
            {
                objreg.pro_front = filename;
                lbl_f.Text = "Field is required";
                return;
            }

            string filename1 = string.Empty;
            string fexte1 = Path.GetExtension(file_back.FileName);
            if (fexte1 == ".jpg" || fexte1 == ".jpeg" || fexte1 == ".png")
            {
                filename1 = Path.GetFileName(file_back.FileName);
                string path1 = Server.MapPath("images/") + filename1;
                file_back.SaveAs(path1);
                objreg.pro_back = filename1;
            }
            else if (!file_front.HasFile)
            {
                objreg.pro_back = filename1;
                lbl_b.Text = "Field is required";
                return;
            }


            objreg.insertproduct(objreg);

        }
        else
        {



            objreg.Id = Convert.ToInt32(HiddenField10.Value);
            if (file_front.HasFile)
            {
                string filename = string.Empty;
                string fexte = Path.GetExtension(file_front.FileName);
                if (fexte == ".jpg" || fexte == ".jpeg" || fexte == ".png")
                {
                    filename = Path.GetFileName(file_front.FileName);
                    string path = Server.MapPath("images/") + filename;
                    file_front.SaveAs(path);
                    objreg.pro_front = filename;
                }
            }
            else
            {
                objreg.pro_front = HiddenField11.Value;
            }

            if (file_back.HasFile)
            {
                string filename1 = string.Empty;
                string fexte1 = Path.GetExtension(file_back.FileName);
                if (fexte1 == ".jpg" || fexte1 == ".jpeg" || fexte1 == ".png")
                {
                    filename1 = Path.GetFileName(file_back.FileName);
                    string path1 = Server.MapPath("images/") + filename1;
                    file_back.SaveAs(path1);
                    objreg.pro_back = filename1;
                }
            }
            else
            {
                objreg.pro_back = HiddenField12.Value;
            }

            

            objreg.updatedata_reg(objreg);
        }

        bind();
        btn_add.Text = "Add";


        Response.Redirect("product_form.aspx");

    }
    protected void gridview_product_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        product objreg = new product();
        if (e.CommandName == "Editdata_product")
        {

            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_product(Id);
            if (dt.Rows.Count > 0)
            {

                HiddenField10.Value = dt.Rows[0][0].ToString();
                drop_custtype.SelectedValue = dt.Rows[0][1].ToString();
                bindcloth();
                drop_cloth.SelectedValue = dt.Rows[0][2].ToString();
                txt_name.Text = dt.Rows[0][3].ToString();
                txt_price.Text = dt.Rows[0][4].ToString();
                txt_des.Text = dt.Rows[0][5].ToString();
                drop_cat.SelectedValue = dt.Rows[0][6].ToString();
                drop_color.SelectedValue = dt.Rows[0][7].ToString();
                drop_design.SelectedValue = dt.Rows[0][8].ToString();
                drop_material.SelectedValue = dt.Rows[0][9].ToString();
                HiddenField11.Value = dt.Rows[0][10].ToString();
                HiddenField12.Value = dt.Rows[0][11].ToString();


                btn_add.Text = "Update";
            }
        }
        else if (e.CommandName == "Deletedata_product")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }


    }
   
    protected void drop_custtype_SelectedIndexChanged1(object sender, EventArgs e)
    {
        product objreg = new product();
        DataTable dt = new DataTable();
        HiddenField4.Value = drop_custtype.SelectedValue;
        dt = objreg.GetclothbycustID(Convert.ToInt32(HiddenField4.Value));

        drop_cloth.DataSource = dt;
        drop_cloth.DataTextField = "cloth_category";
        drop_cloth.DataValueField = "Id";
        drop_cloth.DataBind();
        drop_cloth.Items.Insert(0, "--Select Cloth Categories--");
    }
    protected void gridview_product_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
           
    }
    protected void gridview_product_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridview_product.PageIndex = e.NewPageIndex;
        bind(); 
    }
}