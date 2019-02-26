using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMovieStore.Models;

namespace WebMovieStore
{
    public partial class MovieListPage : System.Web.UI.Page

 
   
    {
     
        
        DataAccessLayer db = new DataAccessLayer();
        //CurrentOrder currentOrder = new CurrentOrder();

        /// <summary>
        /// 
        /// </summary>
        protected void Page_Load(object sender, EventArgs e)
        {
            //set the username
            this.LoggedInAsLabel.Text = "Logged In As: " + Session["Username"].ToString();

            string test = Session["GENRE"].ToString();
            if (!this.IsPostBack)
            {
                createNewOrder();
               
            }
          

        }

        /// <summary>
        /// 
        /// </summary>
        protected void createNewOrder()
        {
            Order newOrder = new Order();
            Customer customer = db.getCustomerByUsername(Convert.ToString(Session["Username"]));
            newOrder.CustomerId = customer.Id;
            int id = db.addOrder(newOrder);
            
            Session["newOrderId"] = id;
        }


        /// <summary>
        /// 
        /// </summary>
        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "PurchaseOption")
            {
                string selected = e.CommandArgument.ToString();
                
                addProductToOrder(selected);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        private void addProductToOrder(String selectedProductID)
        {
            OrderItem orderItem = new OrderItem()
            {
               OrderId = Convert.ToInt32(Session["newOrderId"].ToString()),
                MovieId = Convert.ToInt32(selectedProductID),
                Cost = db.getProduct(Convert.ToInt32(selectedProductID)).Price,
                MovieName = db.getProduct(Convert.ToInt32(selectedProductID)).Title,


            };

            db.addOrderItem(orderItem);

            //update orderList
            GridView1.DataBind();
        }

        /// <summary>
        /// 
        /// </summary>
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// 
        /// </summary>
        protected void Button2_Click(object sender, EventArgs e)
        {
         

            
            Response.Redirect("Checkout.aspx");
        }

        /// <summary>
        /// 
        /// </summary>
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("MovieDirectory.aspx");
        }


        /// <summary>
        /// LogOutBtn Click Event
        /// </summary>
        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("HomePage.aspx");
        }
    }
}