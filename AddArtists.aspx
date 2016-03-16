<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddArtists.aspx.cs" Inherits="AddArtists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Artists To Follow</title>
    <link href="FinalStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <h1>Add Artists To Follow</h1>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBoxList ID="ArtistsCheckBoxList" runat="server" RepeatColumns="2"></asp:CheckBoxList>
        <asp:Button ID="AddArtistsButton" runat="server" Text="Button" OnClick="AddArtistsButton_Click" />
        <asp:Label ID="AddArtistsLabel" runat="server" Text=""></asp:Label>
        <asp:Panel ID="FanArtistPanel" runat="server" Visible="false"></asp:Panel>
         
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ListAll.aspx">Back to all shows and venues</asp:HyperLink>
        
    </div>
    </form>
</body>
</html>
