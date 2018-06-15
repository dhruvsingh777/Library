using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library.Entities
{
    public class books
    {
        public string Title { get; set; }
        public string Author { get; set; }
        public string Category { get; set; }
        public int Year { get; set; }

        public static List<books> Getbooks()
        {
            List<books> listbooks = new List<books>()
            {
                new books (){Title = "Moby Dick", Author = "Dhruv", Category ="Adventure" , Year= 2002},
                new books (){Title = "Shiva", Author = "Abhi", Category ="Fantasy" , Year= 2014},
                new books (){Title = "120 hours", Author = "Alexa", Category ="Adventure" , Year= 2010},
                new books (){Title = "Paranormal Story", Author = "Natasha", Category ="Horror" , Year= 2006},
                new books (){Title = "Funny Jokes 101", Author = "Siri", Category ="Fun" , Year= 2008}
            };

            return listbooks;
        }
    }
}