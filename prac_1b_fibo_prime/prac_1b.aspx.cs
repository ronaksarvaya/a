using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prac_1b
{
    public partial class prac_1b : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int n = Convert.ToInt32(t1.Text);
            int a = 0;
            int b = 1;
            int c;

            string fibo = " ";

            for (int i = 0; i < n; i++)
            {
                fibo += a.ToString() + " ";
                c = a + b;

                a = b;
                b = c;
            }
            l2.Text = fibo;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int num = Convert.ToInt32(t1.Text);

            bool isprime = true;

            if (num <= 1)
            {
                isprime = false;
            }
            else
            {
                for (int n = 2; n <= Math.Sqrt(num); n++)
                {
                    if (num % n == 0)
                    {
                        isprime = false;
                        break;
                    }
                }
            }
            if (isprime)
            {
                l2.Text = num.ToString() + " is a prime number";
            }
            else 
            {
                l2.Text = num.ToString() + " is not a prime number";
            }

        }
    }
}