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
        double tax = 0;
        DataAccessLayer db = new DataAccessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            // int sum;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                sum += Convert.ToDouble(GridView1.Rows[i].Cells[2].Text);

            }

            TotalLabel.Text = TotalLabel.Text + Convert.ToString(sum);
            Session["orderTotal"] = sum + (sum *.25);
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            string field = TextBox1.Text;
            //string pass = Login1.Password.ToString();

            // try
            // {
            using (MovieStoreEDM context = new MovieStoreEDM())
            {
                var user = context.Coupons.FirstOrDefault(u => u.Code == field);

                
                if (user != null)
                {
                    if (user.Code == field)
                    {
                        Label1.Text = "Pass";
                        tax = Convert.ToDouble(user.PercentValue);
                    }
                    else
                    {
                        Label1.Text = "Wrong Password";
                    }
                }
                else
                {
                    Label1.Text = "Wrong Username";
                }
            }
            // }
            // catch
            //  {
            Label1.Text = "Error";
            // }
        }
    }
}