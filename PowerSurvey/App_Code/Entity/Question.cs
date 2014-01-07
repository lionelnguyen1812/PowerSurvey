using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Question
/// </summary>
public class Question
{
    public int QuestionCreateBy { get; set; }

    public string QuestionContent { get; set; }

	public Question()
	{
		
	}

    public Question(int QuestionCreateBy,string QuestionContent) 
    {
        this.QuestionCreateBy = QuestionCreateBy;
        this.QuestionContent = QuestionContent;
    }

}