<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShowDetails.aspx.cs" Inherits="AddShowDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Show Details</title>
</head>
<body>
      <h1>Add Show Details</h1>
    <a href="Default.aspx">Back to Login Page</a>
    <a href="VenueRegistration.aspx">Back to Venue Registration page</a>
    <a href="AddShow.aspx">Back to Add Show page</a>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ShowsDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ShowsDropDownList_SelectedIndexChanged"></asp:DropDownList>

        <table>
                 <tr>
                    <td>Choose artist(s)</td>
                    <td>
                        <asp:DropDownList ID="ArtistDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ArtistDropDownList_SelectedIndexChanged"></asp:DropDownList>
                        <asp:Panel ID="Panel2" runat="server" Visible="false">
                <p>Add artist:  <asp:TextBox ID="ArtistNameTextBox" runat="server"></asp:TextBox><br />
<asp:TextBox ID="ArtistEmailTextBox" runat="server"></asp:TextBox><br />
<asp:TextBox ID="ArtistWebsiteTextBox" runat="server"></asp:TextBox><br />


                    <asp:Button ID="AddArtistButton" runat="server" Text="Add Artist" OnClick="AddArtistButton_Click"/>
                </p>
                
            </asp:Panel>
                    </td>
                </tr>
            <tr><td>Artist Start Time:</td>
                <td><asp:TextBox ID="ArtistTimeTextBox" runat="server" ></asp:TextBox></td>
            </tr>
            <tr><td>Additional Details:</td>
                <td>
                    <asp:TextBox ID="DetailsTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="SaveShowDetailsButton" runat="server" Text="Save Show Details" OnClick="SaveShowDetailsButton_Click"/>
                </td>
                <td>
                    <asp:Label ID="ShowDetailLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
                </table>
    </div>
    </form>
</body>
</html>
