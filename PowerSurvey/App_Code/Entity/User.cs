using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    public int UserID { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
    public string Permission { get; set; }
	public User()
	{
	    
	}

    public User(int UserID, string Username, string Password, string Permission) 
    {
        this.UserID = UserID;
        this.Username = Username;
        this.Password = Password;
        this.Permission = Permission;
    }
}