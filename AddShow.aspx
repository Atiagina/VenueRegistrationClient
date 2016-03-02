<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShow.aspx.cs" Inherits="AddShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Show page</title>
</head>
<body>
    <h1>Add Show</h1>
    <a href="Default.aspx">Back to Login Page</a>
    <a href="VenueRegistration.aspx">Back to Venue Registration page</a>
    <form id="form1" runat="server">
    <div>
    <h1>Add Show:</h1>
        
         <asp:Panel ID="Panel1" runat="server">
            <hr/>
            <table id="NewShowTable"> 
                <tr>
                    <td>Show Name</td>
                    <td>
                        <asp:TextBox ID="ShowNameTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Show Date</td>
                    <td>
                        <asp:Calendar ID="ShowDateCalendar" runat="server"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>Show Time</td>
                    <td>
                        <asp:TextBox ID="TimeTextBox" runat="server" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Tickets</td>
                    <td>
                        <asp:TextBox ID="TicketsTextBox" runat="server" ></asp:TextBox></td>
                </tr>
               <tr>
                <td><asp:Button ID="SaveShowButton" runat="server" Text="Save Show" OnClick="SaveShowButton_Click" />
<asp:Label ID="ResultLabel1" runat="server" Text="Label"></asp:Label>
                </td>
                   <td></td>
               </tr>
                </table>
             </asp:Panel>
        <table>
            <tr>
                <td>After you added a show, you can add some show details:</td>
                <td></td>
            </tr>
                 <tr>
                    <td>Choose artist(s)</td>
                    <td>
                        <asp:DropDownList ID="ArtistDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ArtistDropDownList_SelectedIndexChanged"></asp:DropDownList>
                        <asp:Panel ID="Panel2" runat="server" Visible="false">
                <p>Add artist:  <asp:TextBox ID="ArtistNameTextBox" runat="server"></asp:TextBox><br />
<asp:TextBox ID="ArtistEmailTextBox" runat="server"></asp:TextBox><br />
<asp:TextBox ID="ArtistWebsiteTextBox" runat="server"></asp:TextBox><br />


                    <asp:Button ID="AddArtistButton" runat="server" Text="Add Artist" OnClick="AddArtistButton_Click" />
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
                    <asp:Button ID="SaveShowDetailsButton" runat="server" Text="Save Show Details" OnClick="SaveShowDetailsButton_Click" />
                </td>

            </tr>
                </table>
    </div>
    </form>
</body>
</html>
