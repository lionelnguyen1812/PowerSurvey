using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Question
/// </summary>
public class Question
{
    public int CreateBy { get; set; }

    public string Content { get; set; }

    public Question()
    {
    }

    public Question(int createBy, string content)
    {
        this.CreateBy = createBy;
        this.Content = content;
    }

}