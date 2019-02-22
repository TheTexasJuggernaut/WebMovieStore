using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMovieStore.Models
{
    public enum GenreTypes { COMEDY, ACTION, ADVENTURE, ANIMATION, DRAMA, MYSTERY, ROMANCE, SCIFI, THRILLER };

    public class DataAccessLayer
    {
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
    }
}