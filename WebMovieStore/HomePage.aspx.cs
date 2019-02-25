using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMovieStore.Models;

namespace WebMovieStore
{
    public partial class HomePage : System.Web.UI.Page
    {
        Customer List = new Customer();
       
        /// <summary>
        /// 
        /// </summary>
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// 
        /// </summary>
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string field = Login1.UserName.ToString();
            string pass = Login1.Password.ToString();

           // try
           // {
                using (MovieStoreEDM context = new MovieStoreEDM())
                {
                    var user = context.Customers.FirstOrDefault(u => u.Name == field);


                    if (user != null)
                    {
                        if (user.Password == pass)
                        {
                            Session["Username"] = user.Name;
                            Login1.FailureText = "Pass";
                            Response.Redirect("MovieDirectory.aspx");
                        }
                        else
                        {
                            Login1.FailureText = "Wrong Password";
                        }
                    }
                    else
                    {
                        Login1.FailureText = "Wrong Username";
                    }
                }
           // }
           // catch
          //  {
                Login1.FailureText = "Error";
           // }

        }

        /// <summary>
        /// 
        /// </summary>
        protected void Password_TextChanged(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// 
        /// </summary>
        protected void UserName_TextChanged(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// 
        /// </summary>
        protected void LoginButton_Click(object sender, EventArgs e)
        {

        }
    }
}