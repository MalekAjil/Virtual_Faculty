using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for database
/// </summary>
public class database
{
    public SqlConnection cn = new SqlConnection();
    SqlCommand cm = new SqlCommand();

	public database()
	{
        cn.ConnectionString = "Data Source=mk-pc;Initial Catalog=VIFaculty;Integrated Security=True";
    }
    public DataTable select(string sql)
    {
        cm.Connection = cn;
        cm.CommandText = sql;

        SqlDataReader rdr=cm.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(rdr);
        return dt;
    }

    public int modify(string sql)
    {
        cm.Connection = cn;
        cm.CommandText = sql;
        int i = cm.ExecuteNonQuery();
        return i;
    }
   
}