using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CUBAZ.DAL;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


namespace CUBAZ
{
    public partial class Track : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserDAL view = new UserDAL();
            DataTable result = new DataTable();
            view.TimeTrack(ref result, 2);

            SearchId.DataSource = result;
            SearchId.DataBind();
        }


    }
}