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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserDAL view = new UserDAL();
            DataTable result = new DataTable();
            view.AdminView(ref result);

            AdminViewSearch.DataSource = result;
            AdminViewSearch.DataBind();
        }

        public void DeleteCustomer_Click(object sender, EventArgs e)
        {
            UserDAL del = new UserDAL();
            del.DeleteCustomer(Convert.ToInt32(DelCustomer.Text));
            Response.Redirect("Default.aspx");

        }



    }
}