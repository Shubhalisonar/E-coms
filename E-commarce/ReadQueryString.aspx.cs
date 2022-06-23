using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commarce
{
    public partial class ReadQueryString : System.Web.UI.Page
    {
        string[] category = { "Mobile", "Camera", "Laptop", "Smart Watch" };
        string[] Mobile = { "apple 50000", "mi 35000" };
        string[] Camera = { "canon 20000", "DSLR 60000" };
        string[] Laptop = { "hp 60000", "dell 80000", "lenovo 50000" };
        string[] SmartWatch = { "Apple 10000", "samsan 12000" };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string str = Request.QueryString["category"];
                if (str == "Mobile")
                {
                    BulletedList1.DataSource = Mobile;
                }
                if (str == "Camera")
                {
                    BulletedList1.DataSource = Camera;
                }
                if (str == "Laptop")
                {
                    BulletedList1.DataSource = Laptop;
                }
                if (str == "SmartWatch")
                {
                    BulletedList1.DataSource = SmartWatch;

                }
                Page.DataBind();
            }
        }
    }
}