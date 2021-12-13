using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace WDD_Final
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string userName = Session["userName"].ToString();
            string userName = null;
            try
            {
                userName = Session["userName"].ToString();
            }
            catch
            {
                userName = "1919";
            }
            userName_Label.Text = userName;
        }

        [WebMethod]
        public static string topping_Changed1(string topping, string checked1, string price1)
        {
            bool isChecked = false;
            if (checked1 == "1") { isChecked = true; }
            else { isChecked = false; }
            double price = Convert.ToDouble(price1);
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
                    if (isChecked) price = price +1.5;
                    else price = price - 1.5;
                    break;
                case "Double Cheese":
                    if (isChecked) price = price + 2.25;
                    else price = price - 2.25;
                    break;
            }
            string ddd= "[{\"price\":" + price + "}]"; 
            return "[{\"price\":"+price+"}]";
        }
    }
}