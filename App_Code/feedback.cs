using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

/// <summary>
/// Summary description for feedback
/// </summary>
public class feedback
{
    public int Id { get; set; }
    public String name { get; set; }
    public String emailid{ get; set; }
    public String comment { get; set; }


	public feedback()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void insertfeedback(feedback clr)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("adminfeedback", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@name", clr.name);
        cmd1.Parameters.AddWithValue("@emailid", clr.emailid);
        cmd1.Parameters.AddWithValue("@comment", clr.comment);
        cmd1.Parameters.AddWithValue("@doc", DateTime.Now);
        

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }

    public DataTable getfeedback()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("admin_feedbackselect", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }
    public DataTable getfeedback1()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("admin_feedbackselect1", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }

    public void deletedata(int Id)
    {

        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("admin_delete_feedback", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", Id);


        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();

    }
    

}