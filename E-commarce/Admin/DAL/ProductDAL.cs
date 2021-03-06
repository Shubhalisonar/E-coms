using E_commarce.Admin.Modals;
using E_commarce.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace E_commarce.Admin.DAL
{
    public class ProductDAL
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        public ProductDAL()
        {
            con = new SqlConnection(DbConnectionStr.GetDbConnectionStr());
        }
        public int AddProduct(Product prod)
        {
            int res;
            try
            {
                string str = "insert into Product values(@name,@price,@categoryid)";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@name", prod.Name);
                cmd.Parameters.AddWithValue("@price", prod.Price);
                cmd.Parameters.AddWithValue("@categoryid", prod.CategoryId);
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

        public int UpdateProduct(Product prod)
        {
            int res;
            try
            {
                string str = "update Product set Name=@name, Price=@price, CategoryId=@categoryId where Id=@id";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@name", prod.Name);
                cmd.Parameters.AddWithValue("@price", prod.Price);
                cmd.Parameters.AddWithValue("@categoryid", prod.CategoryId);
                cmd.Parameters.AddWithValue("@id", prod.Id);
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
        public Product GetProductById(int id)
        {
            Product prod = new Product();
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
                        prod.Id = Convert.ToInt32(dr["Id"]);
                        prod.Name = dr["Name"].ToString();
                        prod.Price = Convert.ToDouble(dr["Price"]);
                        prod.CategoryId = Convert.ToInt32(dr["CategoryId"]);
                    }
                    return prod;
                }
                else
                {
                    return prod;
                }
            }
            catch (Exception ex)
            {
                return prod;
            }
            finally
            {
                con.Close();
            }
        }
    }
}