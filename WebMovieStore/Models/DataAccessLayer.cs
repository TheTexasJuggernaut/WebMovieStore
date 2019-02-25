using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMovieStore.Models
{
    public enum GenreTypes { ACTIONCOMEDY, ACTION, COMEDY, FANTASY, ANIMATION, ROMANCE, SUPERHERO, SCIFI, THRILLER };

    public class DataAccessLayer
    {
        public void addOrderItem(OrderItem orderItem)
        {
            using (var context = new MovieStoreEDM())
            {
                context.OrderItems.Add(orderItem);
                try { context.SaveChanges(); }
                catch
                {

                }
                
            }
        }

        public int addOrder(Order order)
        {
            using (var context = new MovieStoreEDM())
            {
                context.Orders.Add(order);
                context.SaveChanges();
            }

            return order.Id;
        }

        public Movie getProduct(int productID)
        {
            using (var context = new MovieStoreEDM())
            {
                Movie movie = (from p in context.Movies1 where p.Id == productID select p).FirstOrDefault<Movie>();
                
                return movie;
            }
        }

        public void updateOrder(Order order)
        {
            using (var context = new MovieStoreEDM())
            {
                Order orderRecord = (from p in context.Orders
                                     where p.Id == order.Id
                                     select p).FirstOrDefault<Order>();
                orderRecord.Customer= order.Customer; 
                orderRecord.Total = order.Total;
                orderRecord.Status = 0;
                context.SaveChanges();
            }
        }
        public List<Movie> getMoviesByGenre(GenreTypes genre)
        {
            using (var context = new MovieStoreEDM())
            {
                List<Movie> movies = (from p in context.Movies1
                                      where p.Genre == genre.ToString()
                                      select p).ToList<Movie>();
                return movies;
            }

        }

        public int addNewOrder(Order newOrder)
        {
            using (var context = new MovieStoreEDM())
            {
                context.Orders.Add(newOrder);
                context.SaveChanges();

                return newOrder.Id;
            }
        }

        

        public Customer getCustomerByUsername(string username)
        {
            using (var context = new MovieStoreEDM())
            {
                Customer customer = (from c in context.Customers
                                     where c.Name == username
                                     select c).FirstOrDefault<Customer>();
                return customer;
            }
        }

        public Movie getMovieById(int movieId)
        {
            using (var context = new MovieStoreEDM())
            {
                Movie movie = (from c in context.Movies1
                               where c.Id == movieId
                               select c).FirstOrDefault<Movie>();
                return movie;
            }
        }

        public Order getOrderById(int orderId)
        {
            using (var context = new MovieStoreEDM())
            {
                Order order = (from c in context.Orders
                               where c.Id == orderId
                               select c).FirstOrDefault<Order>();
                return order;
            }
        }

        public OrderItem getOrderItemById(int orderId)
        {
            using (var context = new MovieStoreEDM())
            {
                OrderItem orderItem = (from c in context.OrderItems
                                       where c.Id == orderId
                                       select c).FirstOrDefault<OrderItem>();
                return orderItem;
            }
        }
    }
}