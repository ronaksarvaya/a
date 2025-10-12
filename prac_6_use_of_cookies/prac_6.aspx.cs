using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prac_6
{
    public partial class prac_6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c1 = new HttpCookie("mycookie");
            c1.Value = "Hello TYBSCIT";
            Response.Cookies.Add(c1);

            String cookievalue = Response.Cookies["mycookie"].Value;
            Label1.Text = cookievalue;
            Response.Cookies["mycookie"].Expires = DateTime.Now.AddDays(-1);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label3.Text = " ";

            if (CheckBox1.Checked)
                Response.Cookies["mycookie"]["Java"] = "Java";

            if (CheckBox2.Checked)
                Response.Cookies["mycookie"]["Python"] = "Python";

            if (CheckBox3.Checked)
                Response.Cookies["mycookie"]["C++"] = "C++";

            // Fetching cookies value
            if (Request.Cookies["mycookie"].Value.ToString() != null)
            {
                if (Request.Cookies["mycookie"]["Java"] != null)
                    Label3.Text += Request.Cookies["mycookie"]["Java"] + " ";

                if (Request.Cookies["mycookie"]["Python"] != null)
                    Label3.Text += Request.Cookies["mycookie"]["Python"] + " ";

                if (Request.Cookies["mycookie"]["C++"] != null)
                    Label3.Text += Request.Cookies["mycookie"]["C++"] + " ";
            }

            if (Label3.Text == " ")
            {
                Label3.Text = "Please select any language";
                Response.Cookies["mycookie"].Expires = DateTime.Now.AddDays(-1);
            }
        }
    }
}