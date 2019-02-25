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
        double sum;
        DataAccessLayer db = new DataAccessLayer();

        /// <summary>
        /// 
        /// </summary>
        protected void Page_Load(object sender, EventArgs e)
        {
            //set the username
            this.LoggedInAsLabel.Text = "Logged In As: " + Session["Username"].ToString();

            // int sum;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                sum += Convert.ToDouble(GridView1.Rows[i].Cells[2].Text);

            }

            TotalLabel.Text = Convert.ToString(sum);
            Session["orderTotal"] = sum + (sum * .25);
        }

        /// <summary>
        /// 
        /// </summary>
        protected void Button1_Click(object sender, EventArgs e)
        {
            Order newOrder = new Order();
            newOrder.Id = Convert.ToInt32(Session["newOrderId"].ToString());
            Customer customer = db.getCustomerByUsername(Session["Username"].ToString());
            newOrder.CustomerId = customer.Id;
            newOrder.Total = Convert.ToDecimal(Session["orderTotal"].ToString());
            newOrder.Status = 0;
            newOrder.OrderDate = DateTime.Now;

            db.updateOrder(newOrder);
        }

        /// <summary>
        /// LogOutBtn Click Event implementation
        /// </summary>
        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("MovieStoreLogin.aspx");
        }
    }
}