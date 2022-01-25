using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginProject02
{
    public partial class LoginSystem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                logado.Visible = false;
                naoLogado.Visible = true;
            } else
            {
                NomeUser.Text = (string)Session["user"];
                logado.Visible = true;
                naoLogado.Visible = false;
            }

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Session["user"] = txtUser.Text;
            Session["password"] = txtPassword.Text;
            Response.Redirect("/LoginSystem");
        }

        protected void LogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("/LoginSystem");
        }
    }
}