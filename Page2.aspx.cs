using System;
using System.Web.Services;

namespace WDD_Final
{
    public partial class Page2 : System.Web.UI.Page
    {
        string userName = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            userName = Session["userName"].ToString();
            userName_Label.Text = userName;
            Session.Add("userName", userName);
        }

        protected void pageTransfer(object sender, EventArgs e)
        {
            Session.Add("toppingStatus", HidTagId.Value);
            Server.Transfer("Page3.aspx");
        }

        [WebMethod]
        public static string topping_Changed1(string topping, string checked1, string price1)
        {
            bool isChecked = false;
            if (checked1 == "1") { isChecked = true; }
            else { isChecked = false; }
            double price = Convert.ToDouble(price1);
            price = price / 1.13;
            switch (topping)
            {
                case "Mushroom":
                    if (isChecked) price++;
                    else price--;
                    break;
                case "Green Olives":
                    if (isChecked) price++;
                    else price--;
                    break;
                case "Green Peppers":
                    if (isChecked) price++;
                    else price--;
                    break;
                case "Pepperoni":
                    if (isChecked) price = price + 1.5;
                    else price = price - 1.5;
                    break;
                case "Double Cheese":
                    if (isChecked) price = price + 2.25;
                    else price = price - 2.25;
                    break;
            }
            price = price * 1.13;
            string returnStr = "[{\"price\":" + Convert.ToDouble(price).ToString("0.00") + "}]";
            return returnStr;
        }
    }
}