<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="FinalStyleSheet.css" rel="stylesheet" />
    <title>Welcome to ShowTracker!</title>
</head>
<body>
    <h1>Welcome to ShowTracker!</h1>
    <form id="form1" runat="server">
    <div>

    <table>
        <tr>
            <td>
                <h3>Venue Login</h3>
            </td>
            <td></td>
            <td></td>
            <td><h3>Fan Login</h3></td>
            <td></td>
        </tr>
        <tr>
            <td>
                User Name:
            </td>
            <td>
                <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
            </td>
            <td>       </td>
            <td>
                User Name:
            </td>
            <td>
                <asp:TextBox ID="FanUserNameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Password:
            </td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td></td>
            <td>
                Password:
            </td>
            <td>
                <asp:TextBox ID="FanPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click"/>
            </td>
            <td>
                <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
            </td>
            <td></td>
            <td>
                <asp:Button ID="FanLoginButton" runat="server" Text="Login" OnClick="FanLoginButton_Click"/>
            </td>
            <td>
                <asp:Label ID="FanErrorLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/VenueRegistration.aspx">Register as a Venue</asp:HyperLink></td>
            <td></td>
            <td></td>
            <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FanRegistration.aspx">Register as a Fan</asp:HyperLink></td>
            <td></td>
        </tr>
    </table>
       
        
    </div>
  
    </form>
</body>
</html>
