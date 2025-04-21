using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
/// <summary>
/// Summary description for checkout
/// </summary>
public class checkout
{
    public int order_id { get; set; }
    public int  user_id{ get; set; }
    public int product_id { get; set; }
    public int quantity{ get; set; }
    public int price { get; set; }

    public int sub_total { get; set; }
    public String size { get; set; }

    public int measurement_id { get; set; }
    public String change_style { get; set; }
    public int order_status { get; set; }
    public DateTime delivery_date { get; set; }
    public String address1 { get; set; }
    public String card_no { get; set; }
    public String cvv_no { get; set; }
    public String name_card { get; set; }
    public String expiry_date { get; set; }
	public checkout()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable selectorder(checkout obj)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("select_order", cn3);
        cmd3.Parameters.AddWithValue("@Id", obj.user_id);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }
    public DataTable selectorderid()
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("select_orderid", cn3);
        
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }
    public DataTable selectorder_status(int id)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("select_order_status", cn3);
        cmd3.Parameters.AddWithValue("@Id", id);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

    public void updatedata_order(int status1, int id)
    {
        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("admin_update_order", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", id);
        cmd4.Parameters.AddWithValue("@status", status1);

        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();
    }


    public void insertorder(checkout reg)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("insert_order", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@order_id", reg.order_id);
        cmd1.Parameters.AddWithValue("@user_id", reg.user_id);
        cmd1.Parameters.AddWithValue("@product_id", reg.product_id);
        cmd1.Parameters.AddWithValue("@quantity", reg.quantity);

        cmd1.Parameters.AddWithValue("@price", reg.price);
        cmd1.Parameters.AddWithValue("@sub_total", reg.sub_total);
        cmd1.Parameters.AddWithValue("@size", reg.size);
        cmd1.Parameters.AddWithValue("@measurement_id", reg.measurement_id);

        cmd1.Parameters.AddWithValue("@change_style", reg.change_style);
        cmd1.Parameters.AddWithValue("@order_status", reg.order_status);
        cmd1.Parameters.AddWithValue("@delivery_date", reg.delivery_date);
        cmd1.Parameters.AddWithValue("@address1", reg.address1);
        cmd1.Parameters.AddWithValue("@card_no", reg.card_no);
        cmd1.Parameters.AddWithValue("@cvv_no", reg.cvv_no);
        cmd1.Parameters.AddWithValue("@name_card", reg.name_card);
        cmd1.Parameters.AddWithValue("@expiry_date", reg.expiry_date);


        cmd1.Parameters.AddWithValue("@doc", DateTime.Now);
        cmd1.Parameters.AddWithValue("@dom", DateTime.Now);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }
    public DataTable getorder()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("admin_orderselect", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }
    public DataTable getorderdetail(int Id)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("get_orderdetail", cn3);
        cmd3.Parameters.AddWithValue("@Id", Id);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }
}
