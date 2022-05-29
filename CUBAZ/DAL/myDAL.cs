using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace CUBAZ.DAL
{
    public class UserDAL
    {
        private static readonly string connString =
           System.Configuration.ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;

        //public bool loginUser(int id, string password, ref string log, ref bool isAdmin)
        //{
        //    SqlConnection con = new SqlConnection(connString);
        //    SqlCommand cmd = new SqlCommand("login", con);
        //    bool isLoggedIn = false;
        //    cmd.CommandType = CommandType.StoredProcedure;

        //    cmd.Parameters.AddWithValue("@ID", id);
        //    cmd.Parameters.AddWithValue("@password", password);

        //    SqlParameter paramLogin = cmd.Parameters.Add("@isLoggedIn", SqlDbType.Bit);
        //    SqlParameter paramAdmin = cmd.Parameters.Add("@isAdmin", SqlDbType.Bit);
        //    paramLogin.Direction = ParameterDirection.Output;
        //    paramAdmin.Direction = ParameterDirection.Output;

        //    try
        //    {
        //        con.Open();
        //        cmd.ExecuteNonQuery(); //executre the cmd query
        //        isAdmin = (bool)cmd.Parameters["@isAdmin"].Value;
        //        isLoggedIn = (bool)cmd.Parameters["@isLoggedIn"].Value;
        //    }
        //    catch (Exception ex)
        //    {
        //        //if any erron return 0
        //        log += ex.ToString();
        //    }
        //    finally
        //    {
        //        con.Close();
        //    }
        //    return isLoggedIn;
        //}

        public int loginUser(string id, string password, ref int output)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("CustomerSignIn", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Password", SqlDbType.VarChar, 20);

                cmd.Parameters["@email"].Value = id;
                cmd.Parameters["@Password"].Value = password;

                cmd.Parameters.Add("@count", SqlDbType.Int).Value = 10;
                cmd.Parameters["@count"].Direction = ParameterDirection.Output;

                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                return -1;
            }
            finally
            {
                con.Close();
            }
            if (cmd.Parameters["@count"].Value.ToString() == "-1")
                return -1;
            return 1;
        }



        //public void RegisterForm_Submit(string name, string address, int phone, string password, string type)
        //{

        //    SqlConnection con = new SqlConnection(connString);
        //    SqlCommand cmd = new SqlCommand("signup", con);
        //    int flag = 0;
        //    cmd.CommandType = CommandType.StoredProcedure;

        //    cmd.Parameters.AddWithValue("@name", name);
        //    cmd.Parameters.AddWithValue("@password", password);
        //    cmd.Parameters.AddWithValue("@address", address);
        //    cmd.Parameters.AddWithValue("@phone", phone);

        //    SqlParameter param = cmd.Parameters.Add("@flag", SqlDbType.Int);
        //    param.Direction = ParameterDirection.Output;

        //    try
        //    {
        //        con.Open();
        //        cmd.ExecuteNonQuery(); //executre the cmd query
        //        flag = (int)cmd.Parameters["@flag"].Value;
        //    }
        //    catch (Exception ex)
        //    {
        //        //if any erron return 0
        //        string log = ex.ToString();

        //    }
        //    finally
        //    {
        //        con.Close();
        //    }


        //}

        public int SignUp(string Name, string Phone, string Address, string Email, string Password, ref int output)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("CustomerSignUp", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Phone", SqlDbType.VarChar, 11);
                cmd.Parameters.Add("@Address", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Password", SqlDbType.VarChar, 20);

                cmd.Parameters["@Name"].Value = Name;
                cmd.Parameters["@Phone"].Value = Phone;
                cmd.Parameters["@Address"].Value = Address;
                cmd.Parameters["@Email"].Value = Email;
                cmd.Parameters["@Password"].Value = Password;

                cmd.Parameters.Add("@count", SqlDbType.Int).Value = 10;
                cmd.Parameters["@count"].Direction = ParameterDirection.Output;

                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                return -1;
            }
            finally
            {
                con.Close();
            }
            if (cmd.Parameters["@count"].Value.ToString() == "-1")
                return -1;
            return 1;
        }

        public void AdminView(ref DataTable result)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("select * from [admin]", con);


            try
            {
                con.Open();
                cmd.ExecuteNonQuery(); //



                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(result); //get results


                con.Close(); //close SQL connection



            }
            catch (Exception ex)
            {
                //if any erron return 0
                string log = ex.ToString();

            }
            finally
            {
                con.Close();
            }

        }

        public void DeleteCustomer(int id)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("delete_customer", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@cutomerid", id);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery(); //executre the cmd query

            }
            catch (Exception ex)
            {
                //if any erron return 0
                string log = ex.ToString();
            }
            finally
            {
                con.Close();
            }
        }

        public void AddToCart(string name, int custId, int quantity)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("AddToCart_Procedure", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@productName", name);
            cmd.Parameters.AddWithValue("@customerId", custId);
            cmd.Parameters.AddWithValue("@quantity", quantity);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery(); //executre the cmd query

            }
            catch (Exception ex)
            {
                //if any erron return 0
                string log = ex.ToString();

            }
            finally
            {
                con.Close();
            }


        }

        public void productsView(ref DataTable result)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("select * from [products_view]", con);


            try
            {
                con.Open();
                cmd.ExecuteNonQuery(); //



                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(result); //get results


                con.Close(); //close SQL connection



            }
            catch (Exception ex)
            {
                //if any erron return 0
                string log = ex.ToString();

            }
            finally
            {
                con.Close();
            }

        }
        public void Checkout(int customerId)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("CheckOut_Procedure", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@customerId", customerId);


            try
            {
                con.Open();
                cmd.ExecuteNonQuery(); //executre the cmd query
            }
            catch (Exception ex)
            {
                //if any erron return 0
                string log = ex.ToString();

            }
            finally
            {
                con.Close();
            }

        }

        public void cartPage(int customerId, ref DataTable result)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("select * from cart join Product on Product.ProductId=cart.ProductId where CustomerId=@val1", con);
            cmd.Parameters.AddWithValue("@val1", customerId);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery(); //



                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(result); //get results


                con.Close(); //close SQL connection



            }
            catch (Exception ex)
            {
                //if any erron return 0
                string log = ex.ToString();

            }
            finally
            {
                con.Close();
            }
        }

        public void bill(ref DataTable result, int customerId)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("select SUM(Price*cart.Quantity) as Total_Bill from cart join Product on Product.ProductId=cart.ProductId where CustomerId=@val1", con);
            cmd.Parameters.AddWithValue("@val1", customerId);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery(); //



                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(result); //get results


                con.Close(); //close SQL connection



            }
            catch (Exception ex)
            {
                //if any erron return 0
                string log = ex.ToString();

            }
            finally
            {
                con.Close();
            }
        }

        public void Search(ref DataTable result, string prodId)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("select Name,Price,Quantity from Product where [Name]=@productName ", con);
            cmd.Parameters.AddWithValue("@productName", prodId);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery(); //



                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(result); //get results


                con.Close(); //close SQL connection



            }
            catch (Exception ex)
            {
                //if any erron return 0
                string log = ex.ToString();

            }
            finally
            {
                con.Close();
            }

        }

        public void TimeTrack(ref DataTable result, int customerId)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand(" select DATEDIFF(MINUTE,Orders.OrderDate,GETDATE()) from Orders where CustomerId=@customId", con);

            cmd.Parameters.AddWithValue("@customId", customerId);


            try
            {
                con.Open();
                cmd.ExecuteNonQuery(); //



                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(result); //get results


                con.Close(); //close SQL connection



            }
            catch (Exception ex)
            {
                //if any erron return 0
                string log = ex.ToString();

            }
            finally
            {
                con.Close();
            }

        }

    }
}