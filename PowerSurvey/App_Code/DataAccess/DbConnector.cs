using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for DbConnector
/// </summary>
public class DbConnector
{
    private SqlConnection _conn;
    private SqlDataAdapter _adapter;
	public DbConnector()
	{
<<<<<<< HEAD
        _conn = new SqlConnection("Data Source=TIN\\SQLEXPRESS;Initial Catalog=SuperSurvey_Dev;User Id=sa;Password=123456");
        //_conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["panzunPowerSurver"].ConnectionString);
=======
        _conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["panzunPowerSurver"].ConnectionString);
>>>>>>> f432d43334083ed6cf90da9be80e98cc006287c6

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
                           
            _adapter.SelectCommand = myCommand;
            
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