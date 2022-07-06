using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commarce.Customers
{
    public partial class Calculater : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntadd_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(TextBox3.Text);
            int b = Convert.ToInt32(TextBox2.Text);
            int c = a + b;
            TextBox4.Text = c.ToString();
        }
    }
}