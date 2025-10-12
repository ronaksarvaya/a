using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pract_1a
{
    public partial class prac_1a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(t1.Text);
            int b = Convert.ToInt32(t2.Text);

            int add = a + b;
            int sub = a - b;
            int mul = a * b;
            int div = a / b;

            string add1 = Convert.ToString(add);
            string sub1 = Convert.ToString(sub);
            string mul1 = Convert.ToString(mul);
            string div1 = Convert.ToString(div);

            l3.Text = "Addition: " + add1;
            l4.Text = "Subtraction: " + sub1;
            l5.Text = "Multiplication: " + mul1;
            l6.Text = "Division: " + div1;
        }
    }
}