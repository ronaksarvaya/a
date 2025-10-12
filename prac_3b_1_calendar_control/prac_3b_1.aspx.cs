using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prac_3b_1
{
    public partial class prac_3b_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            string vacationdate = Calendar1.SelectedDate.ToShortDateString();
            string txt1 = t1.Text;

            if (string.IsNullOrEmpty(vacationdate))
            {
                result.Text = "Please select vacation date: ";
            }
            else
            {
                result.Text = $"Vacation on {vacationdate}:{txt1}";
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Calendar1.SelectedDayStyle.BackColor = System.Drawing.Color.Red;

            Calendar1.SelectedDayStyle.ForeColor = System.Drawing.Color.Black;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.Year == 2025 && e.Day.Date.Month == 10 && e.Day.Date.Day == 13)
            {
                Label l1= new Label();
                l1.Text = "Monday";
                e.Cell.Controls.Add(l1);
            }
        }
    }
}