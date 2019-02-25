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
        protected void Page_Load(object sender, EventArgs e)
        {
           
            string test = Session["GENRE"].ToString();

            createNewOrder();

        }
        protected void createNewOrder()
        {
            Order newOrder = new Order();
            int id = db.addOrder(newOrder);
            Session["newOrderId"] = id;
        }
        
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "PurchaseOption")
            {
                string selected = e.CommandArgument.ToString();
                string test;
            }
        }
        private void addProductToOrder(String selectedProductID)
        {
            OrderItem orderItem = new OrderItem()
            {
               OrderId = Convert.ToInt32(Session["newOrderId"].ToString()),
                MovieId = Convert.ToInt32(selectedProductID),
                
            };

            db.addOrderItem(orderItem);

            //update orderList
            //orderList.DataBind();
        }
    }
}