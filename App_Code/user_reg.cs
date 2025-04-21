using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for user_reg
/// </summary>
public class user_reg
{
    public int Id { get; set; }
    public string search1 { get; set; }
    public String fname { get; set; }
    public String mname { get; set; }
    public String lname { get; set; }
    public String gender { get; set; }
    public String address { get; set; }
    public int countryid { get; set; }
    public int stateid { get; set; }
    public int cityid { get; set; }
    public String contactno { get; set; }
    public String emailid { get; set; }
    public String password1 { get; set; }
    public int isactive{ get; set; }
    public int id { get; set; }

	public user_reg()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void insertreg(user_reg reg)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("user_regestration", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@fname", reg.fname);
        cmd1.Parameters.AddWithValue("@mname", reg.mname);
        cmd1.Parameters.AddWithValue("@lname", reg.lname);
        cmd1.Parameters.AddWithValue("@gender", reg.gender);
        cmd1.Parameters.AddWithValue("@address", reg.address);
        cmd1.Parameters.AddWithValue("@countryid", reg.countryid);
        cmd1.Parameters.AddWithValue("@stateid", reg.stateid);
        cmd1.Parameters.AddWithValue("@cityid", reg.cityid);
        cmd1.Parameters.AddWithValue("@contactno", reg.contactno);
        cmd1.Parameters.AddWithValue("@emailid", reg.emailid);
        cmd1.Parameters.AddWithValue("@password1", reg.password1);
        cmd1.Parameters.AddWithValue("@isactive", reg.isactive);

        cmd1.Parameters.AddWithValue("@doc", DateTime.Now);
        cmd1.Parameters.AddWithValue("@dom", DateTime.Now);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }
    public void updatepwd(string emailid, string password1)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("update_pwd", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@emailid", emailid);
        cmd1.Parameters.AddWithValue("@password1", password1);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }

    public DataTable getemail(String emailid)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("get_email", cn1);
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

        SqlCommand cmd2 = new SqlCommand("usr_regselect", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }
    public DataTable searchdetail(String search1)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("get_search", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@search1", search1);

        cn1.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable getorderdashbord()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("order_dashbord", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }
    public DataTable GetcityBystateID(int state_id)
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("uspgetcity", cn);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@state_id", state_id);

        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

   
    public DataTable dologin(String emailid, String password1)
    {

        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("userlogin", cn);
        cmd.Parameters.AddWithValue("@emailid", emailid);
        cmd.Parameters.AddWithValue("@password1", password1);

        cmd.CommandType = CommandType.StoredProcedure;
        cn.Open();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        return dt;
    }
    public DataTable getpwd(string emailid)
    {
        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("uspgetpwd", cn);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@emailid", emailid);


        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable detail(int Id)
    {

        connection con = new connection();
        SqlConnection cn = new SqlConnection();
        cn = con.getconnection();
        SqlCommand cmd = new SqlCommand("update_detail", cn);
        cmd.Parameters.AddWithValue("@Id", Id);

        cmd.CommandType = CommandType.StoredProcedure;
        cn.Open();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        return dt;
    }
    public void updatedata_profile(user_reg reg)
    {
        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("user_update_profile", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", reg.Id);
        cmd4.Parameters.AddWithValue("@fname", reg.fname);
        cmd4.Parameters.AddWithValue("@mname", reg.mname);
        cmd4.Parameters.AddWithValue("@lname", reg.lname);
        cmd4.Parameters.AddWithValue("@gender", reg.gender);
        cmd4.Parameters.AddWithValue("@address", reg.address);
        cmd4.Parameters.AddWithValue("@countryid", reg.countryid);
        cmd4.Parameters.AddWithValue("@stateid", reg.stateid);
        cmd4.Parameters.AddWithValue("@cityid", reg.cityid);
        cmd4.Parameters.AddWithValue("@contactno", reg.contactno);
        cmd4.Parameters.AddWithValue("@emailid", reg.emailid);
        
        cmd4.Parameters.AddWithValue("@dom", DateTime.Now);

        
        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();
    }
    public DataTable getdatabyid_reg(int Id)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("user_getdetailbyid_reg", cn3);
        cmd3.Parameters.AddWithValue("@Id", Id);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }
      
 
    public void updatereg(user_reg reg)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("user_regestrationupdate", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@fname", reg.fname);
        cmd1.Parameters.AddWithValue("@mname", reg.mname);
        cmd1.Parameters.AddWithValue("@lname", reg.lname);
        cmd1.Parameters.AddWithValue("@gender", reg.gender);
        cmd1.Parameters.AddWithValue("@address", reg.address);
        cmd1.Parameters.AddWithValue("@countryid", reg.countryid);
        cmd1.Parameters.AddWithValue("@stateid", reg.stateid);
        cmd1.Parameters.AddWithValue("@cityid", reg.cityid);
        cmd1.Parameters.AddWithValue("@contactno", reg.contactno);
        cmd1.Parameters.AddWithValue("@emailid", reg.emailid);
        cmd1.Parameters.AddWithValue("@password1", reg.password1);
        cmd1.Parameters.AddWithValue("@isactive", reg.isactive);

        
        cmd1.Parameters.AddWithValue("@dom", DateTime.Now);
        cmd1.Parameters.AddWithValue("@id", reg.Id);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }
    public DataTable getcountrydetail(int countryid,int stateid,int cityid)
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("usr_countryselect", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.AddWithValue("@countryid", countryid);
        cmd2.Parameters.AddWithValue("@stateid", stateid);
        cmd2.Parameters.AddWithValue("@cityid", cityid);
        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }

}