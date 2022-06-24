using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commarce
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int count = (int)Application["vcount"];
            Application.Lock();
            count++;
            Application["vcount"] = count;
            Application.UnLock();
            lblVisitCount.Text = "You are the Visitor number" + Application["vcount"].ToString();
        }
    }
}