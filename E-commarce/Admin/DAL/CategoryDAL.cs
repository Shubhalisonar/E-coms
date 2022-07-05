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
            int res;
            try
            {
                string str = "insert into Product values(@name)";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@name", category.CategoryName);
                
                con.Open();
                res = cmd.ExecuteNonQuery();
                return res;
            }
            catch (Exception ex)
            {
                res = 0;
                return res;
            }
            finally
            {
                con.Close();
            }
        }
        public int UpdateCategory(Category category)
        {
            int res;
            try
            {
                string str = "update Product set Name=@name where Id=@id";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@name", category.CategoryName);
                cmd.Parameters.AddWithValue("@id", category.CategoryId);
                con.Open();
                res = cmd.ExecuteNonQuery();
                return res;
            }
            catch (Exception ex)
            {
                res = 0;
                return res;
            }
            finally
            {
                con.Close();
            }
        }
   
        public Category GetCategoryById(int id)
        {
            Category cat = new Category();
            try
            {
                string str = "select * from Product where Id=@id";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    if (dr.Read())
                    {
                        cat.CategoryId = Convert.ToInt32(dr["Id"]);
                        cat.CategoryName = dr["Name"].ToString();
                    }
                    return cat;
                }
                else
                {
                    return cat;
                }
            }
            catch (Exception ex)
            {
                return cat;
            }
            finally
            {
                con.Close();
            }
        }
    }
}