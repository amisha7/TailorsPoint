using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for product
/// </summary>
public class product
{

    public int Id { get; set; }
    public string category{ get; set; }
    public string sub_cat { get; set; }
    public  string name { get; set; }
    public int price { get; set; }
    public string pro_des  { get; set; }
    public string pro_cat { get; set; }
    public string pro_color { get; set; }
    public string pro_design { get; set; }
    public string pro_material { get; set; }
    public string pro_front { get; set; }
    public string pro_back { get; set; }


   


	public product()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DataTable GetColorData()
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("admin_colorbind", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetDesignData()
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("admin_designbind", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetMaterialData()
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("admin_materialbind", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public void insertproduct(product pro)
    {


        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();



        SqlCommand cmd1 = new SqlCommand("adminproduct", cn1);

        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@category", pro.category);
        cmd1.Parameters.AddWithValue("@sub_cat", pro.sub_cat);
        cmd1.Parameters.AddWithValue("@name",pro.name);
        cmd1.Parameters.AddWithValue("@price", pro.price);
        cmd1.Parameters.AddWithValue("@des", pro_des);
        cmd1.Parameters.AddWithValue("@cat", pro_cat);

        cmd1.Parameters.AddWithValue("@color",pro_color);
        cmd1.Parameters.AddWithValue("@fabric_design", pro_design);
        cmd1.Parameters.AddWithValue("@material", pro_material);
        cmd1.Parameters.AddWithValue("@pro_front", pro_front);
        cmd1.Parameters.AddWithValue("@pro_back", pro_back);
        cmd1.Parameters.AddWithValue("@doc", DateTime.Now);
        cmd1.Parameters.AddWithValue("@dom", DateTime.Now);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }
    public DataTable getreg()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("admin_productselect", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;

 
    }
    public DataTable getproductbysubcatid(int Catid)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("user_productselect", cn3);
        cmd3.Parameters.AddWithValue("@Catid", Catid);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }
    public DataTable getproductbyid(int ProId)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("user_productdes", cn3);
        cmd3.Parameters.AddWithValue("@Proid", ProId);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }
    public DataTable getproduct(int id)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("user_product", cn3);
        cmd3.Parameters.AddWithValue("@id", id);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

    public void updatedata_reg(product reg)
    {
        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("admin_update_product", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", reg.Id);
        cmd4.Parameters.AddWithValue("@category", reg.category);
        cmd4.Parameters.AddWithValue("@sub_cat", reg.sub_cat);
        cmd4.Parameters.AddWithValue("@name", reg.name);
        cmd4.Parameters.AddWithValue("@price", reg.price);
        cmd4.Parameters.AddWithValue("@des", reg.pro_des);
        cmd4.Parameters.AddWithValue("@cat", reg.pro_cat);

        cmd4.Parameters.AddWithValue("@color", reg.pro_color);
        cmd4.Parameters.AddWithValue("@fabric_design", reg.pro_design);
        cmd4.Parameters.AddWithValue("@material", reg.pro_material);
        cmd4.Parameters.AddWithValue("@pro_front", reg.pro_front);
        cmd4.Parameters.AddWithValue("@pro_back", reg.pro_back);
        cmd4.Parameters.AddWithValue("@dom", DateTime.Now);

        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();
    }

    public DataTable getdatabyid_product(int Id)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("admin_getdetailbyid_product", cn3);
        cmd3.Parameters.AddWithValue("@Id", Id);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }
    public void deletedata(int Id)
    {

        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("admin_delete_product", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", Id);


        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();

    }
    public DataTable GetclothData()
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("admin_clothbind", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetsizeData(int Id)
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("user_sizebind", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetclothbycustID(int Id)
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("cloth", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable getnamebyid(int catid)
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("user_namebind", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@catid", catid);
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable getheader(int id)
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("getheader", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.AddWithValue("@id", id);

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }
    public DataTable imagebind(int id)
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("getimage", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.AddWithValue("@id", id);

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }
   

}