using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commarce
{
    public partial class WebUserControl2 : System.Web.UI.UserControl
    {
        string[] categories = { "Mobile", "Camera", "Laptop", "Smart Watch" };
        string[] mobile = { "apple 50000", "mi 35000" };
        string[] Camera = { "canon 20000", "DSLR 60000" };
        string[] laptop = { "hp 60000", "dell 80000", "lenovo 50000" };
        string[] smartwatch = { "Apple 10000", "samsan 12000" };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DropDownList1.DataSource = categories;
                CheckBoxList1.DataSource = mobile;
                CheckBoxList1.DataSource = Camera;
                CheckBoxList1.DataSource = laptop;
                CheckBoxList1.DataSource = smartwatch;
            }
            DropDownList1.DataBind();
            //Page.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string category = DropDownList1.SelectedItem.ToString();
            {
                if (category == "mobile")
                {
                    CheckBoxList1.DataSource = mobile;
                }
                else if (category == "Camera")
                {
                    CheckBoxList1.DataSource = Camera;
                }
                else if (category == "Laptop")
                {
                    CheckBoxList1.DataSource = laptop;
                }
                else if (category == "SmartWatch")
                {
                    CheckBoxList1.DataSource = smartwatch;
                }
                CheckBoxList1.DataBind();

            }
           



        }
    }
}