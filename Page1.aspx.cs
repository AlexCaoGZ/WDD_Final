using System;
using System.Web.UI;

namespace WDD_Final
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session.Add("userName", userName_TB.Text);
                Server.Transfer("Page2.aspx");
            }
        }
    }
}