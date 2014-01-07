using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateNewQuestion : System.Web.UI.Page
{
    private List<Answer> _lstAnswers;

    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsername.Text = (string)Application["Username"];
        _lstAnswers = (List<Answer>)Session["Answers"];
<<<<<<< HEAD

=======
>>>>>>> f432d43334083ed6cf90da9be80e98cc006287c6
        if (Session["Answers"] != null)
        {
            _lstAnswers = (List<Answer>)Session["Answers"];
        }
        else
        {
            _lstAnswers = new List<Answer>();
        }

        lvAnswer.DataSource = _lstAnswers;
        lvAnswer.DataBind();
    }
    protected void btnAddAnswer_Click(object sender, ImageClickEventArgs e)
    {
        String content = null;
        bool isRight = false;

        content = tbxAnswer.Value;
        isRight = cbxIsRight.Checked;

        _lstAnswers.Add(new Answer(content, isRight));

        ReloadSessionAnswer();
    }

    private void ReloadSessionAnswer()
    {
<<<<<<< HEAD
        
        Session["Answers"] = _lstAnswers;
=======
        Session["Answers"] = _lstAnswers;


>>>>>>> f432d43334083ed6cf90da9be80e98cc006287c6
        Response.Redirect(Request.RawUrl);
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Controls.Clear();
        foreach (Answer a in _lstAnswers)
        {
            Response.Write(a.IsRight + ": " + a.Content + "<br/>");
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        _lstAnswers.Clear();
        ReloadSessionAnswer();
        
    }
}