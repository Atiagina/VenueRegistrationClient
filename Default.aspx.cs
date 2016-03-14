using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        VenueLogin();
    }

    protected void VenueLogin()
    {
        VenueRegistrationServiceReference.VenueRegistrationServiceClient vrc = new VenueRegistrationServiceReference.VenueRegistrationServiceClient();

        int key = vrc.VenueLogin(UserNameTextBox.Text, PasswordTextBox.Text);

        if (key != -1)
        {
           // ErrorLabel.Text = "Welcome!";
            Session["userKey"] = key;
            Response.Redirect("~/AddShow.aspx");
        }
        else
        {
            ErrorLabel.Text = "Login Failed";
        }

    }
    protected void FanLoginButton_Click(object sender, EventArgs e)
    {
        FanLogin();
    }

    protected void FanLogin()
    {
        FanLoginRegistrationServiceReference.FanLoginRegistrationServiceClient flrsc = new FanLoginRegistrationServiceReference.FanLoginRegistrationServiceClient();

        int key2 = flrsc.FanLogin(FanUserNameTextBox.Text, FanPasswordTextBox.Text);

        if (key2 != -1)
        {
            //FanErrorLabel.Text = "You Are Welcome!";
            Session["userKey"] = key2;
            Response.Redirect("~/ListAll.aspx"); 
        }
        else
        {
            FanErrorLabel.Text = "Login Failed";
        }
    }
}