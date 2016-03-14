<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListAll.aspx.cs" Inherits="FollowArtist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shows and artists</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Shows and Artists</h1>
    <table>
        <tr>
<td><h3>List of all Shows</h3></td>
            <td></td>
<td><h3>List of all Artists</h3></td>
            <td>
            </td>
<td><h3>List of all Venues</h3></td>
        </tr>
        <tr>
<td>
<asp:BulletedList ID="BulletedListArtists" runat="server" OnClick="BulletedListArtists_Click"></asp:BulletedList>
</td>
            <td></td>
<td>
<asp:BulletedList ID="BulletedListVenues" runat="server"></asp:BulletedList>
</td>
            <td></td>
<td>
<asp:BulletedList ID="BulletedListShows" runat="server"></asp:BulletedList>
            </td>

        </tr>
<tr>
    <td>
<h3>Select show by Artist:</h3>
    </td>
    <td></td>
 <td>
     <h3>Select a Show by Venue:</h3>
 </td>
    <td></td>
    <td></td>

</tr>
<tr>
<td>
    <asp:DropDownList ID="DropDownListShowArtist" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListShowArtist_SelectedIndexChanged"></asp:DropDownList>
    <asp:GridView ID="GridViewArtists" runat="server"></asp:GridView>
</td>
    <td></td>
    <td>
        <asp:DropDownList ID="DropDownListShow" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListShow_SelectedIndexChanged"></asp:DropDownList>
        <asp:GridView ID="GridViewShows" runat="server"></asp:GridView>
    </td>
    <td>
    </td>
    <td></td>

        </tr>


    </table>
    </div>
    </form>
</body>
</html>
