using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


/// <summary>
/// Summary description for doorstep
/// </summary>
public class doorstep
{
    public int Id { get; set; }
    public int user_id { get; set; }
  
    public String name { get; set; }
    public String emailid { get; set; }
    public String mobile { get; set; }
    public String address { get; set; }
    //public String date { get; set; }

   
	public doorstep()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void insertmeasur(doorstep clr)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("doorstepmeasur", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@user_id", clr.user_id);
       
        cmd1.Parameters.AddWithValue("@name", clr.name);

        cmd1.Parameters.AddWithValue("@emailid", clr.emailid);
        cmd1.Parameters.AddWithValue("@mobile", clr.mobile);
        cmd1.Parameters.AddWithValue("@address", clr.address);
        //cmd1.Parameters.AddWithValue("@date", clr.date);



        cmd1.Parameters.AddWithValue("@doc", DateTime.Now);
        cmd1.Parameters.AddWithValue("@dom", DateTime.Now);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }
    public DataTable getdoorstep()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("doorstepselect", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }
    public DataTable checkmeasure(doorstep de)
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("check_measurement", cn2);

        cmd2.CommandType = CommandType.StoredProcedure;
       
        cmd2.Parameters.AddWithValue("@user_id", de.user_id);
        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }
    public DataTable previousdata(doorstep de)
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("previous_data", cn2);
        cmd2.Parameters.AddWithValue("@user_id", de.user_id);
        cmd2.CommandType = CommandType.StoredProcedure;

        
        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }
    public void deleteold(int Id)
    {

        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("delete_old", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", Id);


        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();

    }


}