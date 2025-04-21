using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for delivery
/// </summary>
public class delivery
{
    public int Id { get; set; }
    public String fname { get; set; }
  
    public String lname { get; set; }
   
    public String address { get; set; }
  
    public int stateid { get; set; }
    public int cityid { get; set; }
    public String contactno { get; set; }
    public String emailid { get; set; }
   
	public delivery()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void insertdetail(delivery reg)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("order_detail", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@fname", reg.fname);
       
        cmd1.Parameters.AddWithValue("@lname", reg.lname);
      
        cmd1.Parameters.AddWithValue("@address", reg.address);
       
        cmd1.Parameters.AddWithValue("@stateid", reg.stateid);
        cmd1.Parameters.AddWithValue("@cityid", reg.cityid);
        cmd1.Parameters.AddWithValue("@contactno", reg.contactno);
        cmd1.Parameters.AddWithValue("@emailid", reg.emailid);      


        cmd1.Parameters.AddWithValue("@doc", DateTime.Now);
        cmd1.Parameters.AddWithValue("@dom", DateTime.Now);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }
}