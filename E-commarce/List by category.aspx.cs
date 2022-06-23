using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commarce
{
    public partial class List_by_category : System.Web.UI.Page
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
                ddlCategory.DataSource = categories;
                CheckBoxList1.DataSource = mobile;
                CheckBoxList1.DataSource = Camera;
                CheckBoxList1.DataSource = laptop;
                CheckBoxList1.DataSource = smartwatch;
            }
            //ddlCategory.DataBind();
            Page.DataBind();
        }
        
        

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            //  CheckBoxList1.Items.Clear();

            string category = ddlCategory.SelectedItem.ToString();

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            int counter = 0;
            string data = "Selected products ";
            HttpCookie cookie = new HttpCookie("productlist");
            string str = "prod";
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    counter++;
                    ViewState["pcount"] = counter;
                    data += item.Text + "  ";
                    str = str + counter.ToString();
                    cookie.Values.Add(str, item.Text);
                }
            }
            Response.Cookies.Add(cookie);
            Response.Redirect("~/ViewCart.aspx");

            lblmsg.Text = data;
        }
    }
}
