using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GridView.Entities
{
    public class Users
    {
        public string Name { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        

        public static List<Users> GetUsers()
        {
            List<Users> listuser = new List<Users>()
            {
                new Users() { Name = "Dhruv Singh", UserName = "Dhruv23", Password = "hello",Email="dhruv@gmail.com"},
                new Users() { Name="GAurav Gupta", UserName = "Gaurav007", Password = "12345",Email="gaurav@gmail.com"},
                new Users() { Name = "Rahul Jangir", UserName = "Rahul_J", Password = "asdfg",Email="Rahul@gmail.com"},
                new Users() { Name="Guru R",UserName = "GuruJi", Password = "qwerty",Email="ug@g.com"}
            };

            return listuser;
        }
    }

}