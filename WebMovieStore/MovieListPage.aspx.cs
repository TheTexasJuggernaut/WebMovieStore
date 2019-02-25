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
        int id;
        bool Oneshot = false;
        DataAccessLayer db = new DataAccessLayer();
        //CurrentOrder currentOrder = new CurrentOrder();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            string test = Session["GENRE"].ToString();
            if (Oneshot == false)
            {
                createNewOrder();
                Oneshot = true;
            }
          

        }
        protected void createNewOrder()
        {
            Order newOrder = new Order();
             id = db.addOrder(newOrder);
            Session["newOrderId"] = id;
        }

      
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
            //orderList.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "PurchaseOption")
            {
                string selected = e.CommandArgument.ToString();
                string test;
                addProductToOrder(selected);
            }
        }
    }
}