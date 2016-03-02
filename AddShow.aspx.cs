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
        if(Session["userKey"] != null)
        {
            if (!IsPostBack)
            {
                PopulateArtistNameList();
                Panel2.Visible = false;
            }

        }
        else
        {
            Response.Redirect("Default.aspx");

        }
    }

    protected void PopulateArtistNameList()
    {
        string[] artists = sssc.GetArtists();
        ArtistDropDownList.DataSource = artists;
        ArtistDropDownList.DataBind();
        ArtistDropDownList.Items.Add("New Artist");
    }
    protected void SaveShowButton_Click(object sender, EventArgs e)
    {
        SaveShow();
    }
    protected void ArtistDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ArtistDropDownList.SelectedItem.Text.Equals("New Artist"))
        {
            Panel2.Visible = true;
        }
    }
    protected void AddArtistButton_Click(object sender, EventArgs e)
    {

        NewArtist();

    }
    protected void SaveShowDetailsButton_Click(object sender, EventArgs e)
    {
        SaveShowDetails();
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
        Panel2.Visible = false;

    }

    protected void NewArtist()
    {
        VenueRegistrationServiceReference.ArtistLite al = new VenueRegistrationServiceReference.ArtistLite();
        al.ArtistName = ArtistNameTextBox.Text;
        al.Email = ArtistEmailTextBox.Text;
        al.WebPage = ArtistWebsiteTextBox.Text;

        vrsc.AddArtist(al);

    }

    protected void SaveShowDetails()
    {
        int vKey = (int)Session["userKey"];
        VenueRegistrationServiceReference.ShowDetailsLite sdl = new VenueRegistrationServiceReference.ShowDetailsLite();

        string[] artistName = new string[1];
        if (ArtistDropDownList.SelectedItem.Text == "New Artist")
        {
            artistName[0] = ArtistNameTextBox.Text;
        }
        else
        {
            artistName[0] = ArtistDropDownList.SelectedItem.Text;
        }
        sdl.ArtistNames = artistName;
        sdl.ShowDetailArtistStartTime = TimeSpan.Parse(ArtistTimeTextBox.Text.ToString());
        sdl.ShowDetailAdditional = DetailsTextBox.Text;

        vrsc.AddShowDetails(sdl);

        PopulateArtistNameList();
    }
}