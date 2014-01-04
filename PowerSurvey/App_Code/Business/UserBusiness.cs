using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserBusiness
/// </summary>
public class UserBusiness
{
	public UserBusiness()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public bool Auth(string userName, string password)
    {
        return new UserDataAccess().Login(userName,password);
    }
}