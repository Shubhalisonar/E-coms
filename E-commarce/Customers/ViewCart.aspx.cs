using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commarce
{
    public partial class ViewCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //HttpCookie cookie = Request.Cookies["productlist"];
            //for (int i = 0; i < cookie.Values.Count; i++)
            //{
            //    CheckBoxList1.Items.Add(cookie.Values[i]);
            //}
            if (Session["plist"] != null)
            {

                ArrayList list = new ArrayList();
                list = (ArrayList)Session["plist"];
                checkboxlistviewcart.DataSource = list;
                checkboxlistviewcart.DataBind();
                lblMsg.Text = "";
            }
            else
            {
                lblMsg.Text = "No items in the cart";
            }
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            ArrayList list = new ArrayList();
            foreach (ListItem item in checkboxlistviewcart.Items)
            {
                if (!item.Selected)
                {
                    list.Add(item.Text);
                }
            }
            checkboxlistviewcart.Items.Clear();
            checkboxlistviewcart.DataSource = list;
            checkboxlistviewcart.DataBind();

        }
    }
}