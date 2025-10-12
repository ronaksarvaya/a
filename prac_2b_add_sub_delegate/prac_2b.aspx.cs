using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prac_2b
{
    public delegate int operation(int a, int b);

    public partial class prac_2b : System.Web.UI.Page
    {
        public class del
        {
            public int add(int a, int b)
            {
                return a + b;
            }
            public int sub(int a, int b)
            {
                return a - b;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(t1.Text);
            int b = Convert.ToInt32(t2.Text);

            del obj = new del();

            operation ope = new operation(obj.add);
            l3.Text = "Addition of two number is: " + ope(a, b);

            operation ope2 = new operation(obj.sub);
            l4.Text = "Subtraction of two number is: " + ope2(a, b);

        }
    }
}