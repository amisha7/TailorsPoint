using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


/// <summary>
/// Summary description for measur
/// </summary>
public class measur
{

    public int Id { get; set; }
    public int order_id{ get; set; }

    public  decimal length1 { get; set; }
    public decimal cheast { get; set; }
    public decimal waist { get; set; }
    public decimal shoulder{ get; set; }
    public decimal fitting { get; set; }
    public decimal upper_length { get; set; }
    public decimal bottom_length { get; set; }

    
          
	public measur()
	{
		//
		// TODO: Add constructor logic here
		//
	}


    public void insertmeasur(measur mea)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("admin_measur", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@order_id", mea.order_id);
        cmd1.Parameters.AddWithValue("@length1", mea.length1);
        cmd1.Parameters.AddWithValue("@cheast", mea.cheast);
        cmd1.Parameters.AddWithValue("@waist", mea.waist);
        cmd1.Parameters.AddWithValue("@shoulder", mea.shoulder);
        cmd1.Parameters.AddWithValue("@fitting", mea.fitting);
        cmd1.Parameters.AddWithValue("@upper_length", mea.upper_length);
        cmd1.Parameters.AddWithValue("@bottom_length", mea.bottom_length);
        
        cmd1.Parameters.AddWithValue("@doc", DateTime.Now);
        cmd1.Parameters.AddWithValue("@dom", DateTime.Now);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }

    public DataTable getmeasur()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("admin_measurselect", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }

    public DataTable getdatabyid_measur(int Id)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("admin_getdetailbyid_measur", cn3);
        cmd3.Parameters.AddWithValue("@Id", Id);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

    public void updatedata_measur(measur mea)
    {
        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("admin_update_measur", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", mea.Id);
        cmd4.Parameters.AddWithValue("@order_id", mea.order_id);
        cmd4.Parameters.AddWithValue("@length1", mea.length1);
        cmd4.Parameters.AddWithValue("@cheast", mea.cheast);
        cmd4.Parameters.AddWithValue("@waist", mea.waist);
        cmd4.Parameters.AddWithValue("@shoulder", mea.shoulder);
        cmd4.Parameters.AddWithValue("@fitting", mea.fitting);
        cmd4.Parameters.AddWithValue("@upper_length", mea.upper_length);
        cmd4.Parameters.AddWithValue("@bottom_length", mea.bottom_length);
        





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

        SqlCommand cmd4 = new SqlCommand("admin_delete_measurement", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", Id);


        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();

    }

}