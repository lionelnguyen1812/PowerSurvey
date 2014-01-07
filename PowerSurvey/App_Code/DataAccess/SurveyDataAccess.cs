using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for SurveyDataAccess
/// </summary>
public class SurveyDataAccess
{
    DataTable dt = new DataTable();
	public SurveyDataAccess()
	{
		
	}

    public bool InsertQuestionData(Question q) 
    {
        string squery = "insert into [Question] values (@createby,@content)";
        SqlParameter[] parameter=new SqlParameter[2];
        parameter[0] = new SqlParameter("@createby",SqlDbType.Int);
        parameter[0].Value = q.QuestionCreateBy;

        parameter[1] = new SqlParameter("@content",SqlDbType.VarChar,200);
        parameter[1].Value = q.QuestionContent;

        dt = new DbConnector().ExecuteSelectQuery(squery,parameter);

        if(dt.Rows.Count==1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}