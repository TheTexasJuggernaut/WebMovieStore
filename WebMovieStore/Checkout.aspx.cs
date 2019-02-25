using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMovieStore.Models;

namespace WebMovieStore
{

    public partial class Checkout : System.Web.UI.Page
    {
        decimal sum;
        DataAccessLayer db = new DataAccessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            // int sum;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                sum += Convert.ToDecimal(GridView1.Rows[i].Cells[2].Text);

            }

            TotalLabel.Text = TotalLabel.Text + Convert.ToString(sum);
            Session["orderTotal"] = sum;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Order newOrder = new Order();
            newOrder.Id = Convert.ToInt32(Session["newOrderId"].ToString());
            newOrder.Customer = db.getCustomerByUsername("Shawn");
            newOrder.Total = Convert.ToDecimal(Session["orderTotal"].ToString());
            newOrder.Status = 0;
            db.updateOrder(newOrder);
        }
    }
}