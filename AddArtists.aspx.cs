using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddArtists : System.Web.UI.Page
{
    SelectShowsServiceReference.SelectShowsServiceClient sssc = new SelectShowsServiceReference.SelectShowsServiceClient();
    FanArtistsServiceReference.FanArtistsServiceClient fasc = new FanArtistsServiceReference.FanArtistsServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userKey"] != null)
        {
            if (!IsPostBack)
                PopulateArtists();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void AddArtistsButton_Click(object sender, EventArgs e)
    {
        AddArtistsToFan();
    }

    protected void PopulateArtists() {
        string[] artists = sssc.GetArtists();
        ArtistsCheckBoxList.DataSource = artists;
        ArtistsCheckBoxList.DataBind();

    }

    protected void AddArtistsToFan(){

        int fKey = (int)Session["userKey"];

        foreach (ListItem i in ArtistsCheckBoxList.Items)
        {
            
            if (i.Selected)
            {
                int x = fasc.FollowArtist(fKey, i.Text);
            }
        }
        AddArtistsLabel.Text = "Artist(s) have been added";
        ArtistsCheckBoxList.Items.Clear();
        PopulateFanArtistPanel();
        FanArtistPanel.Visible = true;
    }

    protected void PopulateFanArtistPanel(){
    
    }

    


}