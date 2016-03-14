<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanRegistration.aspx.cs" Inherits="FanRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fan Registration</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Register as a Fan</h1>
    <table>
        <tr>
            <td>Name:</td>
            <td>
                <asp:TextBox ID="FanNameTextBox" runat="server"></asp:TextBox>
            </td>
            <td><asp:RequiredFieldValidator ID="NameRequired" runat="server" ErrorMessage="Name required" ControlToValidate="FanNameTextBox"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                Email:
            </td>
            <td>
                <asp:TextBox ID="FanEmailTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ErrorMessage="Email is required" ControlToValidate="FanEmailTextBox"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FanEmailTextBox" ErrorMessage="Not a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Username:
            </td>
            <td>
                <asp:TextBox ID="FanUserNameTextBox" runat="server"></asp:TextBox>
            </td>
            <td><asp:RequiredFieldValidator ID="FanUsernameRequiredFieldValidator" runat="server" ErrorMessage="Name required" ControlToValidate="FanUserNameTextBox"></asp:RequiredFieldValidator></td>
     
        </tr>
        <tr>
            <td>
                Password:
            </td>
            <td>
                <asp:TextBox ID="FanPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ErrorMessage="Password is required" ControlToValidate="FanPasswordTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirm Password:</td>
            <td><asp:TextBox ID="FanConfirmTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="ConfirmValidator" runat="server" ErrorMessage="Doesn't match the password" ControlToValidate="FanConfirmTextBox" ControlToCompare="FanPasswordTextBox"></asp:CompareValidator>
                  </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="FanRegisterButton" runat="server" Text="Button" OnClick="FanRegisterButton_Click" />
            </td>
            <td>
                <asp:Label ID="FanRegisterLabel" runat="server" Text=""></asp:Label>
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
