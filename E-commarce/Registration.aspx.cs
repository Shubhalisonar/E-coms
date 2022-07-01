using E_Comm.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commarce
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        //public Registration()
        protected void Page_Load(object sender, EventArgs e)
        {
                string str = System.Configuration.ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
                con = new SqlConnection(str);
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            public int SaveNewUser(Users user)
            {
                int result;
                try
                {
                    string str = "insert into Users values(@firstname,@lastname,@username,@email,@password)";
                    cmd = new SqlCommand(str, con);
                    cmd.Parameters.AddWithValue("@firstname", user.FirstName);
                    cmd.Parameters.AddWithValue("@lastname", user.LastName);
                    cmd.Parameters.AddWithValue("@username", user.UserName);
                    cmd.Parameters.AddWithValue("@email", user.Email);
                    cmd.Parameters.AddWithValue("@password", user.Password);
                    // code goes here to add all parameters one by one
                    con.Open();
                    result = cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    return 0;
                }
                finally
                {
                    con.Close();
                }
                return result;

            }

        }
    }
}