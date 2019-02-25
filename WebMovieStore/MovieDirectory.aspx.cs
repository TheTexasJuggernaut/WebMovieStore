using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMovieStore
{
    public partial class MovieDirectory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ImageBtn1_Click(object sender, ImageClickEventArgs e)
        {
            Session["GENRE"] = "ACTIONCOMEDY";
            
            Response.Redirect("MovieListPage.aspx");
        }

        protected void ImageBtn2_Click(object sender, ImageClickEventArgs e)
        {
            Session["GENRE"] = "ACTION";
            Response.Redirect("MovieListPage.aspx");
        }

        protected void ImageBtn3_Click(object sender, ImageClickEventArgs e)
        {
            Session["GENRE"] = "ANIMATION";
            Response.Redirect("MovieListPage.aspx");
        }

        protected void ImageBtn4_Click(object sender, ImageClickEventArgs e)
        {
            Session["GENRE"] = "COMEDY";
            Response.Redirect("MovieListPage.aspx");
        }

        protected void ImageBtn5_Click(object sender, ImageClickEventArgs e)
        {
            Session["GENRE"] = "FANTASY";
            Response.Redirect("MovieListPage.aspx");
        }

        protected void ImageBtn6_Click(object sender, ImageClickEventArgs e)
        {
            Session["GENRE"] = "ROMANCE";
            Response.Redirect("MovieListPage.aspx");
        }

        protected void ImageBtn7_Click(object sender, ImageClickEventArgs e)
        {
            Session["GENRE"] = "SCIFI";
            Response.Redirect("MovieListPage.aspx");
        }

        protected void ImageBtn8_Click(object sender, ImageClickEventArgs e)
        {
            Session["GENRE"] = "SUPERHERO";
            Response.Redirect("MovieListPage.aspx");
        }

        protected void ImageBtn9_Click(object sender, ImageClickEventArgs e)
        {
            Session["GENRE"] = "THRILLER";
            Response.Redirect("MovieListPage.aspx");
        }
    }
}