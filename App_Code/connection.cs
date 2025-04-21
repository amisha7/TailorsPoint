using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for connection
/// </summary>
public class connection
{
	public connection()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public SqlConnection getconnection()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        return con;
    }


}