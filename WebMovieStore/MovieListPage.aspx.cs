using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMovieStore
{
    public partial class MovieListPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string test = Session["GENRE"].ToString();



        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "PurchaseOption")
            {
                string selected = e.CommandArgument.ToString();
                string test;
            }
        }
    }
}