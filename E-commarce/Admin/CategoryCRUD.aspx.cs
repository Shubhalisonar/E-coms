using E_commarce.Admin.DAL;
using E_commarce.Admin.Modals;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commarce.Admin
{
    public partial class CategoryCRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btsearch_Click(object sender, EventArgs e)
        {
            Category cat = new Category();
            cat =categorydb.GetcategoryById(Convert.ToInt32(txtcategoryid.Text));
            if (cat != null)
            {
                txtcategoryname.Text = cat.CategoryName;
            }
            else
            {
                lblMsg.Text = "Record not found";
                lblMsg.ForeColor = Color.Red;
            }
        }

        protected void btsave_Click(object sender, EventArgs e)
        {
            Category cat = new Category();
            cat.CategoryName = txtcategoryname.Text;
            int res = CategoryDAL.ADDCategory(cat);
            if (res == 1)
            {
                lblMsg.Text = "Record inserted successfully";
                lblMsg.ForeColor = Color.Green;
                txtcategoryid.Text = String.Empty;
                txtcategoryname.Text = string.Empty;
            }
            else
                lblMsg.Text = "Something went wrong";
                lblMsg.ForeColor = Color.Red;
        }
    }
}