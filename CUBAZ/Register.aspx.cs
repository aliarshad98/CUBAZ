using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using CUBAZ.DAL;

namespace CUBAZ
{
    public partial class Register : System.Web.UI.Page
    {
        private static readonly string connString =
              System.Configuration.ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //protected void Login_Click(object sender, EventArgs e)
        //{
        //    UserDAL uDAl = new UserDAL();
        //    string log = "";
        //    bool isAdmin = false;
        //    bool flag = uDAl.loginUser(Convert.ToInt32(LogInId.Text), LogInPassword.Text, ref (log), ref (isAdmin));
        //    Session["Flag"] = flag;
        //    Session["ID"] = LogInId.Text;

        //    if (isAdmin)
        //    {
        //        Response.Redirect("Admin.aspx");
        //    }
        //    else
        //    {
        //        Response.Redirect("Default.aspx");
        //    }
        //}

          protected void Login_Click(object sender, EventArgs e)
        {
            UserDAL ud = new UserDAL();
            string Email = LogInId.Text.Trim();
            string Password = LogInPassword.Text.Trim();
            int temp = 0;
            int Found = ud.loginUser(Email, Password, ref temp);
            if (Found==1)
            {
                Message.Text = "Login Successfull";
                Response.Redirect("Default.aspx");
            }
            else if (Found==-1)
            {
                Message.Text="Login Failed";
            }
        }

        //protected void Register_Click(object sender, EventArgs e)
        //{
        //    UserDAL reg = new UserDAL();
        //    reg.RegisterForm_Submit(textbox_name.Text, textbox_address.Text, Convert.ToInt32(textbox_phone.Text), textbox_password.Text, textbox_type.Text);
        //    Response.Redirect("Default.aspx");
        //}

        protected void Register_Click(object sender, EventArgs e)
        {
            UserDAL ud = new UserDAL();
            string Name = textbox_name.Text.Trim();
            string Phone = textbox_phone.Text.Trim();
            string Address = textbox_address.Text.Trim();
            string Email = textbox_email.Text.Trim();
            string Password = textbox_password.Text.Trim();
            int temp = 0;
            int Found = ud.SignUp(Name, Phone, Address, Email, Password, ref temp);
            if (Found == 1)
            {
                Message.Text = "SignUp Successfull";
            }
            else if (Found == -1)
            {
                Message.Text = "SignUp Failed";
            }
        }

    }
}