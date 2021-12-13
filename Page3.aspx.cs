using System;

namespace WDD_Final
{
    public partial class Page3 : System.Web.UI.Page
    {
        string userName = null;
        string[] toppingArr = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            userName = Session["userName"].ToString();
            Session.Add("userName", userName);
            userName_Label.Text = userName;

            string topping = Session["toppingStatus"].ToString();
            toppingArr = topping.Split('|');
            price.Text = toppingArr[0];
            for(int i = 1; i < toppingArr.Length; i++)
            {
                if (toppingArr[i] != "")
                {
                    toppings.Text = toppings.Text + toppingArr[i] +", ";
                }
            }
        }

        protected void okBtn_Clicked(object sender, EventArgs e)
        {
            Session.Add("orderStatus", "1");
            Server.Transfer("Page4.aspx");
        }

        protected void cancelBtn_Clicked(object sender, EventArgs e)
        {
            Session.Add("orderStatus", "0");
            Server.Transfer("Page4.aspx");
        }
    }
}