using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VenueRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SubmitVenue();
    }

    protected void SubmitVenue()
    {
        VenueServiceReference.VenueRegistrationServiceClient vrc = new VenueServiceReference.VenueRegistrationServiceClient();

        VenueServiceReference.VenueLite vlite = new VenueServiceReference.VenueLite();

        vlite.Name = NameTextBox.Text;
        vlite.Address = AddressTextBox.Text;
        vlite.City = CityTextBox.Text;
        vlite.State = StateTextBox.Text;
        vlite.ZipCode = ZipCodeTextBox.Text;
        vlite.Phone = PhoneTextBox.Text;
        vlite.Email = EmailTextBox.Text;
        vlite.WebPage = WebPageTextBox.Text;
        vlite.AgeRestriction = Int32.Parse(AgeTextBox.Text);
        vlite.UserName = UserNameTextBox.Text;
        vlite.PasswordPlain = ConfirmTextBox.Text;

        int result = vrc.VenueRegistration(vlite);

        if (result != -1)
        {
            ResultLabel.Text = "Registration is successful";

        }
        else
        {

            ResultLabel.Text = "Registration failed";
        }

    }
}