using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetCarsStie
{
    public partial class BuildCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            string order = string.Format("{0}, your {1} {2} will arrive on {3}. ",
            txtCarPetName.Text, ListBoxColor.SelectedValue, txtCarModel.Text, carCalendar.SelectedDate.ToShortDateString());

            lblOrder.Text = order;
        }
    }
}