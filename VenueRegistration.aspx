<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VenueRegistration.aspx.cs" Inherits="VenueRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Venue Registration Page</title>
</head>
<body>
    <h1>Venue Registration</h1>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Name:</td>
            <td><asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="NameRequired" runat="server" ErrorMessage="Name required" ControlToValidate="NameTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="AddressRequired" runat="server" ErrorMessage="Address required" ControlToValidate="AddressTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>City:</td>
            <td><asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="CityRequired" runat="server" ErrorMessage="City required" ControlToValidate="CityTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>State:</td>
            <td><asp:TextBox ID="StateTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="StateRequired" runat="server" ErrorMessage="State required" ControlToValidate="StateTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>ZipCode:</td>
            <td><asp:TextBox ID="ZipCodeTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="ZipCodeRequired" runat="server" ErrorMessage="ZipCode required" ControlToValidate="ZipCodeTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td><asp:TextBox ID="PhoneTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="PhoneRequired" runat="server" ErrorMessage="Phone required" ControlToValidate="PhoneTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ErrorMessage="Email is required" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Not a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>WebPage:</td>
            <td><asp:TextBox ID="WebPageTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="WebPageRequired" runat="server" ErrorMessage="WebPage required" ControlToValidate="WebPageTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Age Restriction:</td>
            <td><asp:TextBox ID="AgeTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="AgeRequired" runat="server" ErrorMessage="Age Restriction required" ControlToValidate="AgeTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>User Name:</td>
            <td><asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ErrorMessage="Username is required" ControlToValidate="UserNametextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ErrorMessage="Password is required" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirm Password:</td>
            <td><asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="ConfirmValidator" runat="server" ErrorMessage="Doesnt match the password" ControlToValidate="ConfirmTextBox" ControlToCompare="PasswordTextBox"></asp:CompareValidator>
                  </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
            </td>
            <td>
                <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Login</asp:HyperLink>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
