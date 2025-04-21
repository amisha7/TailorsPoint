using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

using System.Data;

/// <summary>
/// Summary description for style
/// </summary>
public class style
{
    public int Id { get; set; }
    public int style_id { get; set; }

    public string s_name { get; set; }
    public string image1 { get; set; }
   
	public style()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetData1()
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("admin_stylebind", cn);

        cmd.CommandType = CommandType.StoredProcedure;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void insertstyle(style cl)
    {


        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();



        SqlCommand cmd1 = new SqlCommand("adminstyle", cn1);

        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@style_id", cl.style_id);
        cmd1.Parameters.AddWithValue("@s_name", cl.s_name);
        cmd1.Parameters.AddWithValue("@image1", cl.image1);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }
    public DataTable getstyle()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("adminstyleselect", cn2);
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

        SqlCommand cmd4 = new SqlCommand("admin_delete_style", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", Id);


        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();

    }
}