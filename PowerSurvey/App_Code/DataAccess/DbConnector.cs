using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DbConnector
/// </summary>
public class DbConnector
{
    private SqlConnection _conn;
    private SqlDataAdapter _adapter;
	public DbConnector()
	{
        _conn = new SqlConnection("Data Source=PANZUN;Initial Catalog=SuperSurvey_Dev;User Id=sa;Password=123456");

        _adapter = new SqlDataAdapter();
	}

    public DataTable ExecuteSelectQuery(string squery, SqlParameter[] parameters)
    {
        SqlCommand myCommand = new SqlCommand();
        DataTable dataTable = new DataTable();
        
        dataTable = null;
        
        DataSet ds = new DataSet();
        try
        {
            myCommand.Connection = openConnection();
            myCommand.CommandText = squery;
            myCommand.Parameters.AddRange(parameters);
            // myCommand.ExecuteNonQuery();                
            _adapter.SelectCommand = myCommand;
            //myCommand.ExecuteReader();
            _adapter.Fill(ds);
            dataTable = ds.Tables[0];
        }
        catch (SqlException e)
        {
            Console.Write("Error - Connection.executeSelectQuery - Query: " + squery + " \nException: " + e.StackTrace.ToString());
            return null;
        }
        finally
        {

        }
        return dataTable;
    }

    #region private helpers

    private SqlConnection openConnection()
    {
        if (_conn.State == ConnectionState.Closed || _conn.State == ConnectionState.Broken)
        {
            _conn.Open();
        }
        return _conn;
    }

    #endregion

}