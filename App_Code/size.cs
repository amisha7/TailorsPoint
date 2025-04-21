using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;



/// <summary>
/// Summary description for size
/// </summary>
public class size
{

    public int Id { get; set; }
    public int cloth_id { get; set; }
    public string cloth_size { get; set; }

	public size()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetsizeData(int catid)
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("admin_sizebind", cn);
        cmd.Parameters.AddWithValue("@catid", catid);
        cmd.CommandType = CommandType.StoredProcedure;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable GetsizeData1()
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("admin_clothcatbind", cn);
        
        cmd.CommandType = CommandType.StoredProcedure;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public void insertsize(size cl)
    {


        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();



        SqlCommand cmd1 = new SqlCommand("adminsize", cn1);

        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@cloth_id", cl.cloth_id);
        cmd1.Parameters.AddWithValue("@cloth_size", cl.cloth_size);
        cmd1.Parameters.AddWithValue("@doc", DateTime.Now);
        cmd1.Parameters.AddWithValue("@dom", DateTime.Now);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }
    public DataTable getsize()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("adminsizeselect", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }

    public DataTable getdatabyid_size(int Id)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("admin_getdetailbyid_size", cn3);
        cmd3.Parameters.AddWithValue("@Id", Id);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

    public void updatedata_size(size cl)
    {
        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("admin_update_size", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", cl.Id);
        cmd4.Parameters.AddWithValue("@cloth_id", cl.cloth_id);
        cmd4.Parameters.AddWithValue("@cloth_size", cl.cloth_size);

        cmd4.Parameters.AddWithValue("@dom", DateTime.Now);

        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();
    }

    public void deletedata(int Id)
    {

        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("admin_delete_size", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", Id);


        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();

    }
    
}