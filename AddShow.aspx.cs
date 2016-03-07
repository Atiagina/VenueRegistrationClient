using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddShow : System.Web.UI.Page
{
    SelectShowsServiceReference.SelectShowsServiceClient sssc = new SelectShowsServiceReference.SelectShowsServiceClient();
    VenueRegistrationServiceReference.VenueRegistrationServiceClient vrsc = new VenueRegistrationServiceReference.VenueRegistrationServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userKey"] != null)
        { }
        else{
            Response.Redirect("Default.aspx");
        }
    }

    
    protected void SaveShowButton_Click(object sender, EventArgs e)
    {
        SaveShow();
    }
    
   
    

    protected void SaveShow() {
        
        int vKey = (int)Session["userKey"];
        VenueRegistrationServiceReference.ShowLite sl = new VenueRegistrationServiceReference.ShowLite();

        sl.ShowName = ShowNameTextBox.Text;
        sl.VenueKey = vKey;
        sl.ShowDate = DateTime.Parse(ShowDateCalendar.SelectedDate.ToShortDateString());
        sl.ShowTime = TimeSpan.Parse(TimeTextBox.Text.ToString()); 
        sl.ShowTicket = TicketsTextBox.Text;

        vrsc.AddShow(sl);

        ResultLabel1.Text = "The show has been saved";

    }

   
    
}