using E_commarce.Admin.Modals;
using E_commarce.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace E_commarce.Admin.DAL
{
    public class CategoryDAL
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        public CategoryDAL()
        {
            con = new SqlConnection(DbConnectionStr.GetDbConnectionStr());
        }
        public int ADDCategory(Category category)
        {
            return 1;
        }
        public int UpdateCategory(Category category)
        {
            return 1;
        }
        public Category GetCategoryById(int id)
        {
            Category c = new Category();
            return c;
        }

    }
}