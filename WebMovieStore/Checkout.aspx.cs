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
       double tax = .25;
        double discount;
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

            //sum += sum * tax;
            TotalLabel.Text = Convert.ToString(sum);
            Session["orderTotal"] = sum;

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
            sum += sum * tax;
            TotalLabel.Text = Convert.ToString(sum);

            db.updateOrder(newOrder);
        }

        /// <summary>
        /// LogOutBtn Click Event implementation
        /// </summary>
        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("HomePage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string field = TextBox1.Text;
            try
            {
                using (MovieStoreEDM context = new MovieStoreEDM())
                {
                    var user = context.Coupons.FirstOrDefault(u => u.Code == field);


                    if (user != null)
                    {
                        if (user.Code == field)
                        {

                            discount = Convert.ToInt32(user.PercentValue);
                            sum -= sum * (discount / 100);
                            TotalLabel.Text = Convert.ToString(sum);
                            Label1.Text = "Worked";
                        }
                        else
                        {
                            Label1.Text = "Wrong Code";
                        }
                    }
                    else
                    {
                        Label1.Text = "Wrong Code";
                    }
                }
            }
            catch
            {
                //Label1.Text = "Error";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("MovieDirectory.aspx");
        }
    }
}