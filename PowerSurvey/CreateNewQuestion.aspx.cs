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
        if (Session["Username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            lblUsername.Text = Session["Username"].ToString();
            txtQuestionContent.Text = Session["CurrQuestion"] != null ? Session["CurrQuestion"].ToString() : "";
            _lstAnswers = (List<Answer>)Session["Answers"];
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
    }

    protected void btnAddAnswer_Click(object sender, ImageClickEventArgs e)
    {
        Session["CurrQuestion"] = txtQuestionContent.Text;

        String content = null;
        bool isRight = false;

        content = tbxAnswer.Value;
        isRight = cbxIsRight.Checked;

        _lstAnswers.Add(new Answer(content, isRight));

        Reload();
    }

    private void Reload()
    {
        Session["Answers"] = _lstAnswers;
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
        Reload();
        
    }

}