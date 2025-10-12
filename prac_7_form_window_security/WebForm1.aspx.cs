using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prac_7
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected bool authentication(String user, String pass)
        {
            if(user == "xyz" && pass == "123")
            {
                return true;
            }
            if (user == "abc" && pass == "abc")
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            if (authentication(TextBox1.Text, TextBox2.Text)) { 
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, c1.Checked);

                Session["username"] = TextBox1.Text;
                Response.Redirect("/WebForm2");

            }
            else
            {
                Response.Write("Invalid credentials");
            }
        }
    }
}