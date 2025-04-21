using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for city
/// </summary>
public class city
{

    public int Id { get; set; }
    public int country_id { get; set; }
    public int state_id { get; set; }
    public string city_nm { get; set; }


	public city()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DataTable GetCountryData()
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("admin_countrybind", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetStateData()
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("admin_statebind", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public void insertcity(city ci)
    {


        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();



        SqlCommand cmd1 = new SqlCommand("admincity2", cn1);

        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@country_id", ci.country_id);
        cmd1.Parameters.AddWithValue("@state_id", ci.state_id);
        cmd1.Parameters.AddWithValue("@city_nm", ci.city_nm);
        cmd1.Parameters.AddWithValue("@doc", DateTime.Now);
        cmd1.Parameters.AddWithValue("@dom", DateTime.Now);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }
    public DataTable getcity()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("admincityselect", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }
    public DataTable GetstateBycountryID(int country_id)
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("uspgetstate", cn);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@country_id", country_id);

        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable getdatabyid_city(int Id)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("admin_getdetailbyid_city1", cn3);
        cmd3.Parameters.AddWithValue("@Id", Id);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

    public void updatedata_city(city ci)
    {
        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("admin_update_city", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", ci.Id);
        cmd4.Parameters.AddWithValue("@country_id", ci.country_id);
        cmd4.Parameters.AddWithValue("@state_id",ci.state_id);

        cmd4.Parameters.AddWithValue("@city_nm", ci.city_nm);

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

        SqlCommand cmd4 = new SqlCommand("admin_delete_city", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", Id);


        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();

    }


}