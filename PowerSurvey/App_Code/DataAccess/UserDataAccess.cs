using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for UserDataAccess
/// </summary>
public class UserDataAccess
{
    public UserDataAccess()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool Login(string userName, string password)
    {
        string squery = "select * from [User] where Username=@userName and UserPassword = @password";

        SqlParameter[] parameters = new SqlParameter[2];
        parameters[0] = new SqlParameter("@userName", SqlDbType.VarChar, 50);
        parameters[0].Value = userName;

        parameters[1] = new SqlParameter("@password", SqlDbType.VarChar, 128);
        parameters[1].Value = password;

        DataTable result = new DbConnector().ExecuteSelectQuery(squery, parameters);
        //DataTable result = newDbConnector().ExecuteProc("userlogin", parameters);

        if (result.Rows.Count == 1)
        {
            return true;
        }
        else
        {
            return false;
        }


    }
}