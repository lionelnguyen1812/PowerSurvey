﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Answer
{
    public int ID { get; set; }
    public bool IsRight { get; set; }
    public string Content { get; set; }

    public Answer() 
    { }
	public Answer(string Content, bool IsRight)
	{
        this.IsRight = IsRight;
        this.Content = Content;
	}

    public Answer(int ID, string content, bool isRight)
    {
        this.ID = ID;
        this.IsRight = isRight;
        this.Content = content;
    }
}