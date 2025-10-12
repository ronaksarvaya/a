using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prac_1c
{
    public partial class prac_1c : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int n = Convert.ToInt32(t1.Text);
            l2.Text = " ";

            int count = 1;

            for (int i = 1; i <= n; i++) 
            {
                for (int j = 1; j <= i; j++)
                {
                    l2.Text += count + " ";
                    count++;
                }
                l2.Text += "<br>";
            }
        }
    }
}