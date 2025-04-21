using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for registration
/// </summary>
public class registration
{
    public int Id { get; set; }
    public String type_name { get; set; }
    public String password1 { get; set; }
   


	public registration()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DataTable dologin(String fname, String password1)
    {

        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("adminlogin", cn);
        cmd.Parameters.AddWithValue("@fname", fname);
        cmd.Parameters.AddWithValue("@password1", password1);
      
        cmd.CommandType = CommandType.StoredProcedure;
        cn.Open();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        return dt;
    }

    public void inserttype(registration reg)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("admin_custcategory", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@type_name", reg.type_name);
        cmd1.Parameters.AddWithValue("@doc",DateTime.Now);
        cmd1.Parameters.AddWithValue("@dom", DateTime.Now);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }

    public DataTable gettype()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("admin_custselect", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }

    public DataTable getdatabyid_custtype(int Id)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("admin_getdetailbyid_custtype", cn3);
        cmd3.Parameters.AddWithValue("@Id", Id);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);
        
        return dt;
    }

    public void updatedata_custtype(registration reg)
    {
        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("admin_update_custtype", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", reg.Id);
        cmd4.Parameters.AddWithValue("@type_name", reg.type_name);
        
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

        SqlCommand cmd4 = new SqlCommand("admin_delete_custtype", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id",Id);
       

        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();

    }


    }

   
