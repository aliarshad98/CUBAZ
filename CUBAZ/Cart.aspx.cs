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
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserDAL view = new UserDAL();
            UserDAL view1 = new UserDAL();
            DataTable result = new DataTable();
            view.cartPage(Convert.ToInt32(Session["ID"]), ref result);

            DataTable result1 = new DataTable();

            view1.bill(ref result1, Convert.ToInt32(Session["ID"]));

            CartViewId.DataSource = result;
            CartViewId.DataBind();

            TotalBillId.DataSource = result1;
            TotalBillId.DataBind();


        }
    }
}