using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for apply
/// </summary>
public class apply
{
    public string cat { get; set; }
    public string color { get; set; }
    public string fabric_design { get; set; }
    public string material { get; set; }
   
   
	public apply()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable getuspapply(string cat, string color, string fabric_design, string material,int catid,int p1,int p2)
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("user_applybind", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@cat", cat);
        cmd.Parameters.AddWithValue("@color", color);
        cmd.Parameters.AddWithValue("@fabric_design", fabric_design);
        cmd.Parameters.AddWithValue("@material", material);
        cmd.Parameters.AddWithValue("@p1", p1);
        cmd.Parameters.AddWithValue("@p2", p2);
        cmd.Parameters.AddWithValue("@catid", catid);
       
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}