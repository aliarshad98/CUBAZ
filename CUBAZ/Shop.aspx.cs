
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using CUBAZ.DAL;

namespace CUBAZ
{
    public partial class Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserDAL productsView = new UserDAL();
            DataTable result = new DataTable();
            productsView.productsView(ref result);

            ShowProducts.DataSource = result;
            ShowProducts.DataBind();
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            UserDAL cart = new UserDAL();
            Button clickedButton = sender as Button;

            if (clickedButton == null) // just to be on the safe side
                return;


            if (clickedButton.ID == "Textbox1")//Onion
            {
                cart.AddToCart("Galaxy s9", Convert.ToInt32(Session["ID"]), Convert.ToInt32(first.Text));
            }
            else if (clickedButton.ID == "Textbox2")//Mint
            {
                cart.AddToCart("Galaxy s8 plus", Convert.ToInt32(Session["ID"]), Convert.ToInt32(second.Text));
            }
            else if (clickedButton.ID == "Textbox3")//Banana
            {
                cart.AddToCart("Galaxy Note 8", Convert.ToInt32(Session["ID"]), Convert.ToInt32(third.Text));
            }
            else if (clickedButton.ID == "Textbox4")//Lemon
            {
                cart.AddToCart("P20 Lite", Convert.ToInt32(Session["ID"]), Convert.ToInt32(fourth.Text));
            }
            else if (clickedButton.ID == "Button1")//Mint
            {
                cart.AddToCart("Y7 Prime 2018", Convert.ToInt32(Session["ID"]), Convert.ToInt32(second.Text));
            }
            else if (clickedButton.ID == "Button2")//Banana
            {
                cart.AddToCart("Oppo F7", Convert.ToInt32(Session["ID"]), Convert.ToInt32(third.Text));
            }
            else if (clickedButton.ID == "Button3")//Lemon
            {
                cart.AddToCart("XL Jacket", Convert.ToInt32(Session["ID"]), Convert.ToInt32(fourth.Text));
            }
            else if (clickedButton.ID == "Button4")//Mint
            {
                cart.AddToCart("Cotton Shirt", Convert.ToInt32(Session["ID"]), Convert.ToInt32(second.Text));
            }
            else if (clickedButton.ID == "Button5")//Banana
            {
                cart.AddToCart("Levis Jeans", Convert.ToInt32(Session["ID"]), Convert.ToInt32(third.Text));
            }
            else if (clickedButton.ID == "Button6")//Lemon
            {
                cart.AddToCart("GUCCI Black Tie", Convert.ToInt32(Session["ID"]), Convert.ToInt32(fourth.Text));
            }
            else if (clickedButton.ID == "Button7")//Mint
            {
                cart.AddToCart("GUCCI Black Belt", Convert.ToInt32(Session["ID"]), Convert.ToInt32(second.Text));
            }
            else if (clickedButton.ID == "Button8")//Banana
            {
                cart.AddToCart("Armani T-Shirts", Convert.ToInt32(Session["ID"]), Convert.ToInt32(third.Text));
            }
            else if (clickedButton.ID == "Button9")//Lemon
            {
                cart.AddToCart("Dawlance Double Refragerator", Convert.ToInt32(Session["ID"]), Convert.ToInt32(fourth.Text));
            }
            else if (clickedButton.ID == "Button10")//Mint
            {
                cart.AddToCart("Dawlance Washing Machine", Convert.ToInt32(Session["ID"]), Convert.ToInt32(second.Text));
            }
            else if (clickedButton.ID == "Button11")//Banana
            {
                cart.AddToCart("Dawlance Inspire Plus Inverter", Convert.ToInt32(Session["ID"]), Convert.ToInt32(third.Text));
            }
            else if (clickedButton.ID == "Button12")//Lemon
            {
                cart.AddToCart("Sogo Generator", Convert.ToInt32(Session["ID"]), Convert.ToInt32(fourth.Text));
            }
            else if (clickedButton.ID == "Button14")//Mint
            {
                cart.AddToCart("Samsung Smart Watch", Convert.ToInt32(Session["ID"]), Convert.ToInt32(second.Text));
            }
            else if (clickedButton.ID == "Button15")//Banana
            {
                cart.AddToCart("NIKE Casual Shoes", Convert.ToInt32(Session["ID"]), Convert.ToInt32(third.Text));
            }
            else if (clickedButton.ID == "Button16")//Lemon
            {
                cart.AddToCart("Hush Puppie Black Shoes", Convert.ToInt32(Session["ID"]), Convert.ToInt32(fourth.Text));
            }
            else if (clickedButton.ID == "Button17")//Mint
            {
                cart.AddToCart("NIKE Joggers", Convert.ToInt32(Session["ID"]), Convert.ToInt32(second.Text));
            }
            else if (clickedButton.ID == "Button18")//Banana
            {
                cart.AddToCart("Reebok Stylish Shoes", Convert.ToInt32(Session["ID"]), Convert.ToInt32(third.Text));
            }
            else if (clickedButton.ID == "Button19")//Lemon
            {
                cart.AddToCart("Reebok futsal Shoe", Convert.ToInt32(Session["ID"]), Convert.ToInt32(fourth.Text));
            }
            else if (clickedButton.ID == "Button20")//Lemon
            {
                cart.AddToCart("NIKE LED Shoe", Convert.ToInt32(Session["ID"]), Convert.ToInt32(fourth.Text));
            }
            else if (clickedButton.ID == "Button21")//Mint
            {
                cart.AddToCart("Love Season Perfume", Convert.ToInt32(Session["ID"]), Convert.ToInt32(second.Text));
            }
            else if (clickedButton.ID == "Button22")//Banana
            {
                cart.AddToCart("Black xs Perfume", Convert.ToInt32(Session["ID"]), Convert.ToInt32(third.Text));
            }
            else if (clickedButton.ID == "Button23")//Lemon
            {
                cart.AddToCart("White Diamond Perfume", Convert.ToInt32(Session["ID"]), Convert.ToInt32(fourth.Text));
            }

            else if (clickedButton.ID == "Button24")//Lemon
            {
                cart.AddToCart("ck be Perfume", Convert.ToInt32(Session["ID"]), Convert.ToInt32(fourth.Text));
            }
            else if (clickedButton.ID == "Button25")//Mint
            {
                cart.AddToCart("Black Arrow", Convert.ToInt32(Session["ID"]), Convert.ToInt32(second.Text));
            }
            else if (clickedButton.ID == "Button26")//Banana
            {
                cart.AddToCart("Jadore Perfume", Convert.ToInt32(Session["ID"]), Convert.ToInt32(third.Text));
            }
            else if (clickedButton.ID == "Button13")//Lemon
            {
                cart.AddToCart("LG 40\" LED TV ", Convert.ToInt32(Session["ID"]), Convert.ToInt32(fourth.Text));
            }


            Response.Redirect("Shop.aspx");
        }

        protected void CheckOut_Click(object sender, EventArgs e)
        {
            UserDAL trig = new UserDAL();
            trig.Checkout(Convert.ToInt32(Session["ID"]));

        }
    }
}
