using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FanRegisterButton_Click(object sender, EventArgs e)
    {
        SubmitFan();
    }

    protected void SubmitFan()
    {
        FanLoginRegistrationServiceReference.FanLoginRegistrationServiceClient flrsc = new FanLoginRegistrationServiceReference.FanLoginRegistrationServiceClient();

        FanLoginRegistrationServiceReference.FanLite flite = new FanLoginRegistrationServiceReference.FanLite();

        flite.FanName = FanNameTextBox.Text;
        flite.FanEmail = FanEmailTextBox.Text;
        flite.FanUsername = FanUserNameTextBox.Text;
        flite.FanPassword = FanPasswordTextBox.Text;

        int result = flrsc.FanRegistration(flite);

        if (result != -1)
        {
            FanRegisterLabel.Text = "Registration is successful";

        }
        else
        {

            FanRegisterLabel.Text = "Registration failed";
        }


    }
}