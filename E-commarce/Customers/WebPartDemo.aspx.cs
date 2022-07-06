using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace E_commarce.Customers
{
    public partial class WebPartDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbcatlogmode_Click(object sender, EventArgs e)
        {
            WebPartManager1.DisplayMode = WebPartManager.CatalogDisplayMode;
        }

        protected void lbeditermode_Click(object sender, EventArgs e)
        {
            WebPartManager1.DisplayMode = WebPartManager.EditDisplayMode;
        }

        protected void lbdesingmode_Click(object sender, EventArgs e)
        {
          WebPartManager1.DisplayMode = WebPartManager.DesignDisplayMode;
        }
    }
}