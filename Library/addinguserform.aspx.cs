using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GridView.Entities;

namespace Library
{
    public partial class addinguserform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Griddata.Visible = false;
            }
        }

        protected void Adduser_Click(object sender, EventArgs e)
        {
            var dataSource = GridView.Entities.Users.GetUsers();
            dataSource.Add(new Users
            {
                Name = Namebox.Text,
                UserName = Usernamebox.Text,
                Email = Emailbox.Text,
                Password = Usernamebox.Text
            });

            Griddata.DataSource = dataSource;
            Griddata.DataBind();
            Griddata.Visible = true;
        }
        bool UserExists(string UserName)
        {
            return GridView.Entities.Users.GetUsers().Any(a => a.UserName.Equals(UserName));
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (UserExists(Usernamebox.Text))
            {
                Server.Transfer("loginpage.aspx", true);
            }
            else
            {
                Response.Redirect("error.aspx");
            }
        }
    }
}