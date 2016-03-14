﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FollowArtist : System.Web.UI.Page
{

    SelectShowsServiceReference.SelectShowsServiceClient db = new SelectShowsServiceReference.SelectShowsServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userKey"] != null)
            {
                if (!IsPostBack)
                {
                    LoadDropDown();
                    LoadBulletedArtists();
                    LoadBulletedShows();
                    LoadBulletedVenues();
                    LoadDropDown2();
                }

            }
            else
            {
                Response.Redirect("Default.aspx");

            }
            
        }

    }
    protected void BulletedListArtists_Click(object sender, BulletedListEventArgs e)
    {

    }

    protected void LoadDropDown()
    {
        string[] venues = db.GetVenues();
        DropDownListShow.DataSource = venues;
        DropDownListShow.DataBind();
        DropDownListShow.Items.Insert(0, "Choose a Venue");

    }

    protected void FillGrid()
    {
        string venue = DropDownListShow.SelectedItem.Text;
        SelectShowsServiceReference.ShowLite[] shows = db.GetShowByVenue(venue);
        GridViewShows.DataSource = shows;
        GridViewShows.DataBind();


    }
    protected void DropDownListShowArtist_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillGrid2();
    }
    protected void DropDownListShow_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillGrid();
    }

    protected void LoadBulletedArtists()
    {
        string[] artists = db.GetArtists();
        BulletedListArtists.DataSource = artists;
        BulletedListArtists.DataBind();

    }

    protected void LoadBulletedShows()
    {
        string[] shows = db.GetShows();
        BulletedListShows.DataSource = shows;
        BulletedListShows.DataBind();

    }

    protected void LoadBulletedVenues()
    {
        string[] venues = db.GetVenues();
        BulletedListVenues.DataSource = venues;
        BulletedListVenues.DataBind();

    }

    protected void LoadDropDown2()
    {
        string[] artists = db.GetArtists();
        DropDownListShowArtist.DataSource = artists;
        DropDownListShowArtist.DataBind();
        DropDownListShowArtist.Items.Insert(0, "Choose an Artist");

    }

    protected void FillGrid2()
    {
        string artist = DropDownListShowArtist.SelectedItem.Text;
        SelectShowsServiceReference.ShowLite[] shows = db.GetShowByArtist(artist);
        GridViewArtists.DataSource = shows;
        GridViewArtists.DataBind();

    }
}