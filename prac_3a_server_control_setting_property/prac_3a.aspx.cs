using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prac_3a
{
    public partial class prac_3a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dd1_SelectedIndexChanged(object sender, EventArgs e)
        {
            l1.Font.Size = Convert.ToInt32(dd1.SelectedIndex);
        }

        protected void c1_CheckedChanged(object sender, EventArgs e)
        {
            if (c1.Checked) 
            { 
                l1.Font.Bold = true;
            }
            else
            {
                l1.Font.Bold = false;
            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            t1.Text = ListBox.SelectedValue.ToString();
        }

        protected void c2_CheckedChanged(object sender, EventArgs e)
        {
            if (c2.Checked) 
            {
                l1.Font.Italic = true;
            }
            else
            {
                l1.Font.Italic = false;
            }
        }

        protected void c3_CheckedChanged(object sender, EventArgs e)
        {
            if (c3.Checked)
            {
                l1.Font.Underline = true;
            }
            else
            {
                l1.Font.Underline = false;
            }
        }

        protected void r1_CheckedChanged(object sender, EventArgs e)
        {
            l1.ForeColor = System.Drawing.Color.Red;
        }

        protected void r2_CheckedChanged(object sender, EventArgs e)
        {
            l1.ForeColor = System.Drawing.Color.Blue;
        }

        protected void r3_CheckedChanged(object sender, EventArgs e)
        {
            l1.ForeColor= System.Drawing.Color.Green;
        }

        protected void r4_CheckedChanged(object sender, EventArgs e)
        {
            l1.ForeColor = System.Drawing.Color.Yellow;
        }
    }
}