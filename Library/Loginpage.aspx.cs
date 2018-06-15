using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class Loginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        bool UserExists(string UserName, string Password)
        {
            return GridView.Entities.Users.GetUsers().Any(a => a.UserName.Equals(UserName) && a.Password.Equals(Password));
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (UserExists(Username.Text, Password.Text))
            {
                Server.Transfer(".aspx", true);

            }
            else
            {
                Response.Redirect("Registerpage.aspx");
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registerpage.aspx");
        }

        protected void Forgot_Click(object sender, EventArgs e)
        {

        }
    }
}