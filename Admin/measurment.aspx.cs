using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_measurment : System.Web.UI.Page
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
        measur objreg = new measur();
        DataTable dt = new DataTable();
        dt = objreg.getmeasur();

        gridview_measur.DataSource = dt;
        gridview_measur.DataBind();
       


    }

  
    
    protected void btn_measurementadd_Click(object sender, EventArgs e)
    {
        measur objreg = new measur();
        objreg.order_id = Convert.ToInt16(txt_order.Text);
        objreg.length1 = Convert.ToDecimal(txt_length.Text);
        objreg.cheast = Convert.ToDecimal(txt_cheast.Text);
        objreg.waist= Convert.ToDecimal(txt_waist.Text);
        objreg.shoulder = Convert.ToDecimal(txt_shoulder.Text);
        objreg.fitting = Convert.ToDecimal(txt_fitiing.Text);
        objreg.upper_length = Convert.ToDecimal(txt_upperlength.Text);
        objreg.bottom_length = Convert.ToDecimal(txt_bottomlength.Text);



        if (btn_measurementadd.Text == "Add")
        {
            objreg.insertmeasur(objreg);

        }
        else
        {
            objreg.Id = Convert.ToInt32(HiddenField1.Value);
            objreg.updatedata_measur(objreg);

        }
        Response.Redirect("measurment.aspx");
    }
    protected void btn_measurementcancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("measurment.aspx");
    }
    protected void gridview_measur_RowCommand(object sender, GridViewCommandEventArgs e)
    {

         measur objreg = new measur();
        if (e.CommandName == "Editdata_measur")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            DataTable dt = new DataTable();
            dt = objreg.getdatabyid_measur(Id);
            if (dt.Rows.Count > 0)
            {

                HiddenField1.Value = dt.Rows[0][0].ToString();
                txt_order.Text = dt.Rows[0][1].ToString();
                txt_length.Text = dt.Rows[0][2].ToString();
                txt_cheast.Text = dt.Rows[0][3].ToString();
                txt_waist.Text = dt.Rows[0][4].ToString();
                txt_shoulder.Text = dt.Rows[0][5].ToString();
                txt_fitiing.Text = dt.Rows[0][6].ToString();
                txt_upperlength.Text = dt.Rows[0][7].ToString();
                txt_bottomlength.Text = dt.Rows[0][8].ToString();


                btn_measurementadd.Text = "Update";
            }
        }

        else if (e.CommandName == "Deletedata_measurement")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            objreg.deletedata(Id);
            bind();

        }
    }
   
}
