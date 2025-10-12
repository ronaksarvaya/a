using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prac_2a
{
    public partial class prac_2a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int valuetype = Convert.ToInt32(t1.Text);

            object boxed = valuetype;
            l2.Text = "Boxed value: " + boxed;

            int unboxed = (int)boxed;
            l3.Text = "Unboxed value: " + unboxed;
        }
    }
}