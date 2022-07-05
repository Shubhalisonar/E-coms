using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commarce.Admin
{
    public partial class ManageRoles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var list = Membership.GetAllUsers();
                DropDownList1.DataSource = list;
                DropDownList1.DataBind();
            }
        }

        protected void bntaddrole_Click(object sender, EventArgs e)
        {
            try
            {
                if (Roles.RoleExists(txtrole.Text))
                {
                    lblMsg.Text = "Role already exits";
                }
                else
                {
                    Roles.CreateRole(txtrole.Text);
                    lblMsg.Text = "Successfully added the Role " + txtrole.Text;
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }

        protected void bntaddusertorole_Click(object sender, EventArgs e)
        {
            try
            {
                string username = DropDownList1.SelectedItem.Text;
                Roles.AddUserToRole(username, txtrole.Text);
                lblMsg.Text = username + " added to role " + txtrole.Text;

            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }
    }
}