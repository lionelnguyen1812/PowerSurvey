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
<<<<<<< HEAD
        
    }


=======
        //
        // TODO: Add constructor logic here
        //
    }
>>>>>>> f432d43334083ed6cf90da9be80e98cc006287c6

    public bool Login(string userName, string password)
    {
        string squery = "select * from [User] where Username=@userName and UserPassword = @password";

        SqlParameter[] parameters = new SqlParameter[2];
        parameters[0] = new SqlParameter("@userName", SqlDbType.VarChar, 50);
        parameters[0].Value = userName;

        parameters[1] = new SqlParameter("@password", SqlDbType.VarChar, 128);
        parameters[1].Value = password;

        DataTable result = new DbConnector().ExecuteSelectQuery(squery, parameters);
<<<<<<< HEAD
=======
        //DataTable result = newDbConnector().ExecuteProc("userlogin", parameters);
>>>>>>> f432d43334083ed6cf90da9be80e98cc006287c6

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