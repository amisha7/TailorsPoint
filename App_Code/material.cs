using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
/// <summary>
/// Summary description for material
/// </summary>
public class material
{
    public int Id { get; set; }
    public String material_nm { get; set; }
	public material()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void insertmaterial(material mt)
    {
        connection con1 = new connection();
        SqlConnection cn1 = new SqlConnection();
        cn1 = con1.getconnection();

        SqlCommand cmd1 = new SqlCommand("adminmaterial", cn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@material_nm", mt.material_nm);
        cmd1.Parameters.AddWithValue("@doc", DateTime.Now);
        cmd1.Parameters.AddWithValue("@dom", DateTime.Now);

        cn1.Open();
        cmd1.ExecuteNonQuery();
        cn1.Close();
    }

    public DataTable getmaterial()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("admin_materialselect", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }

    public DataTable getdatabyid_material(int Id)
    {

        connection con3 = new connection();
        SqlConnection cn3 = new SqlConnection();
        cn3 = con3.getconnection();

        SqlCommand cmd3 = new SqlCommand("admin_getdetailbyid_material", cn3);
        cmd3.Parameters.AddWithValue("@Id", Id);
        cmd3.CommandType = CommandType.StoredProcedure;

        cn3.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

    public void updatedata_material(material mt)
    {
        connection con4 = new connection();
        SqlConnection cn4 = new SqlConnection();
        cn4 = con4.getconnection();

        SqlCommand cmd4 = new SqlCommand("admin_update_material", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", mt.Id);
        cmd4.Parameters.AddWithValue("@material_nm", mt.material_nm);

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

        SqlCommand cmd4 = new SqlCommand("admin_delete_material", cn4);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@Id", Id);


        cn4.Open();
        cmd4.ExecuteNonQuery();
        cn4.Close();

    }

    public DataTable getuspmaterial()
    {
        connection con2 = new connection();
        SqlConnection cn2 = new SqlConnection();
        cn2 = con2.getconnection();

        SqlCommand cmd2 = new SqlCommand("uspgetmaterial", cn2);
        cmd2.CommandType = CommandType.StoredProcedure;


        cn2.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;


    }
}
