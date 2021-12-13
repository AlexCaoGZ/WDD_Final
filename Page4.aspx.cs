using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WDD_Final
{
    public partial class Page4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Session["userName"].ToString();
            string orderStatus = Session["orderStatus"].ToString();
            if (orderStatus == "0")
            {
                thankMsg.Text = "Order <b>cancelled</b> successfully. Thank you for trying our website, " + userName + ".";
            }
            else
            {
                thankMsg.Text = "Thanks for your order " + userName + ". We are making your pizza";
            }
        }
    }
}