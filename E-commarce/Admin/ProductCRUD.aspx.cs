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
    public partial class ProductCRUD : System.Web.UI.Page
    {
        ProductDAL productdb = new ProductDAL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntsave_Click(object sender, EventArgs e)
        {
            Product prod = new Product();
            prod.Name = txtproductname.Text;
            prod.Price = Convert.ToDouble(txtproductprice.Text);
            prod.CategoryId = Convert.ToInt32(DropDownList1.SelectedValue);
            int res = productdb.AddProduct(prod);
            if (res == 1)
            {
                lblMsg.Text = "Record inserted successfully";
                lblMsg.ForeColor = Color.Green;
                txtproductid.Text = String.Empty;
                txtproductname.Text = string.Empty;
                txtproductprice.Text = string.Empty;
                DropDownList1.SelectedValue = "1";
            }
            else
                lblMsg.Text = "Something went wrong";
            lblMsg.ForeColor = Color.Red;
        }
        protected void bntsearch_Click(object sender, EventArgs e)
        {
                Product prod = new Product();
                prod = productdb.GetProductById(Convert.ToInt32(txtproductid.Text));
                if (prod != null)
                {
                    txtproductname.Text = prod.Name;
                    txtproductprice.Text = prod.Price.ToString();
                    DropDownList1.SelectedValue = prod.CategoryId.ToString();
                }
                else
                {
                    lblMsg.Text = "Record not found";
                    lblMsg.ForeColor = Color.Red;
                }
        }
        protected void bntupdate_Click(object sender, EventArgs e)
        {
            Product prod = new Product();
            prod.Id = Convert.ToInt32(txtproductid.Text);
            prod.Name = txtproductname.Text;
            prod.Price = Convert.ToDouble(txtproductprice.Text);
            prod.CategoryId = Convert.ToInt32(DropDownList1.SelectedValue);
            int res = productdb.UpdateProduct(prod);
            if (res == 1)
            {
                lblMsg.Text = "Record modified successfully";
                lblMsg.ForeColor = Color.Green;
            }
            else
            {
                lblMsg.Text = "Something went wrong";
                lblMsg.ForeColor = Color.Red;
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}