using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for admin_reg
/// </summary>
public class admin_reg
{
    public int Id { get; set; }
    public String fname { get; set; }
    public String lname { get; set; }
    public String email { get; set; }
    public String password1 { get; set; }
   
    public String  address1 { get; set; }
    public String image1 { get; set; }
    
    public int usertype { get; set; }
    public int isactive { get; set; }

	public admin_reg()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void insertreg(admin_reg reg)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("adminregestration", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@fname", reg.fname);
        cmd1.Parameters.AddWithValue("@lname", reg.lname);
        cmd1.Parameters.AddWithValue("@email", reg.email);
        cmd1.Parameters.AddWithValue("@password1", reg.password1);
      
        cmd1.Parameters.AddWithValue("@address1", reg.address1);
        cmd1.Parameters.AddWithValue("@image1", reg.image1);
        cmd1.Parameters.AddWithValue("@usertype", reg.usertype);
        cmd1.Parameters.AddWithValue("@isactive", reg.isactive);

        cmd1.Parameters.AddWithValue("@doc", DateTime.Now);
        cmd1.Parameters.AddWithValue("@dom", DateTime.Now);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }
    public DataTable getdata(String fname)
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("uspgetdata", cn);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@fname", fname);

        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable getemail(String emailid)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("get_emailadmin", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@emailid", emailid);

        cn1.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
   
    public DataTable getreg()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("admin_regselect", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }

    public DataTable getdatabyid_reg(int Id)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("admin_getdetailbyid_reg", cn3);
        cmd3.Parameters.AddWithValue("@Id", Id);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

    public void updatedata_reg(admin_reg reg)
    {
        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("admin_update_reg", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", reg.Id);
        cmd4.Parameters.AddWithValue("@fname", reg.fname);
        cmd4.Parameters.AddWithValue("@lname", reg.lname);
        cmd4.Parameters.AddWithValue("@email", reg.email);
        cmd4.Parameters.AddWithValue("@password1", reg.password1);
       
        cmd4.Parameters.AddWithValue("@address1", reg.address1);

        cmd4.Parameters.AddWithValue("@image1", reg.image1);

        cmd4.Parameters.AddWithValue("@usertype", reg.usertype);
        cmd4.Parameters.AddWithValue("@isactive", reg.isactive);
        cmd4.Parameters.AddWithValue("@dom", DateTime.Now);

        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();
    }
}
