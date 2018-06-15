using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class Allusers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Griddata.DataSource = GridView.Entities.Users.GetUsers();
                Griddata.DataBind();
            }
        }

        protected void adduser_Click(object sender, EventArgs e)
        {
            Response.Redirect("addinguserform.aspx");
        }
    }
}