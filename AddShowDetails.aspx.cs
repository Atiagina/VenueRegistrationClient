using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddShowDetails : System.Web.UI.Page
{
    SelectShowsServiceReference.SelectShowsServiceClient sssc = new SelectShowsServiceReference.SelectShowsServiceClient();
    VenueRegistrationServiceReference.VenueRegistrationServiceClient vrsc = new VenueRegistrationServiceReference.VenueRegistrationServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userKey"] != null)
        {
            if (!IsPostBack)
            {
                PopulateShowsList();
                PopulateArtistNameList();
                Panel2.Visible = false;
            }

        }
        else
        {
            Response.Redirect("Default.aspx");

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
    protected void ShowsDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void PopulateArtistNameList()
    {
        string[] artists = sssc.GetArtists();
        ArtistDropDownList.DataSource = artists;
        ArtistDropDownList.DataBind();
        ArtistDropDownList.Items.Add("New Artist");
    }

    protected void PopulateShowsList()
    {
        int vKey = (int)Session["userKey"];
        
        string[] shows = sssc.GetShows();
        ShowsDropDownList.DataSource = shows;
        ShowsDropDownList.DataBind();

    }

    protected void ArtistDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ArtistDropDownList.SelectedItem.Text.Equals("New Artist"))
        {
            Panel2.Visible = true;
        }
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
        VenueRegistrationServiceReference.ShowDetailsLite sdln = new VenueRegistrationServiceReference.ShowDetailsLite();

        string showName = ShowsDropDownList.SelectedItem.Text;

        string artistName = null;
        if (ArtistDropDownList.SelectedItem.Text == "New Artist")
        {
            artistName = ArtistNameTextBox.Text;
        }
        else
        {
            artistName = ArtistDropDownList.SelectedItem.Text;
        }

        sdln.ShowName = showName;
        sdln.ArtistName = artistName;
        sdln.ShowDetailArtistStartTime = TimeSpan.Parse(ArtistTimeTextBox.Text.ToString());
        sdln.ShowDetailAdditional = DetailsTextBox.Text;


        vrsc.AddShowDetails(sdln);

        ShowDetailLabel.Text = "The show has been saved";

        PopulateArtistNameList();
    }
}
