using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
interface calculateArea
{
    int area(int x, int y);
}

class rectangle : calculateArea
{
    public int area(int x, int y)
    {
        return x * y;
    }
}

namespace prac_2c
{
    public partial class prac_2c : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(t1.Text);
            int b = Convert.ToInt32(t2.Text);

            rectangle Area = new rectangle();
            int result = Area.area(a, b);

            l4.Text = "Area of rectangle: " + result.ToString();
        }
    }
}