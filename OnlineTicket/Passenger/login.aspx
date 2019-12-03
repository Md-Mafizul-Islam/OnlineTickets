<%@ Page Title="" Language="C#" MasterPageFile="~/Passenger/passengMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineTicket.Passenger.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border-right: maroon thick groove; border-top: maroon thick groove;
        border-left: maroon thick groove; width: 100%; border-bottom: maroon thick groove">
        <tr>
            <td colspan="2" style="text-align: center; height: 20px;">
                <strong><span style="color: black; vertical-align: top; text-align: center;">Login Information</span></strong></td>
        </tr>
        <tr>
            <td style="vertical-align: top; width: 30%; height: 28px; text-align: right">
                <strong>User name:</strong></td>
            <td style="vertical-align: top; width: 70%; height: 28px; text-align: left">
                <asp:TextBox ID="txtUserName" runat="server" MaxLength="15" onblur="resetColor(this.name)"
                    onfocus="setColor(this.name)" Width="80%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                    ErrorMessage="Please enter the valid Username.">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="vertical-align: top; width: 30%; text-align: right; height: 26px;">
                <strong>Password:</strong></td>
            <td style="vertical-align: top; width: 70%; text-align: left; height: 26px;">
                <asp:TextBox ID="txtPassword" runat="server" MaxLength="12" onblur="resetColor(this.name)"
                    onfocus="setColor(this.name)" TextMode="Password" ToolTip="Enter your Password here.."
                    Width="78%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Please enter the valid Password.">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="vertical-align: top; text-align: center" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="vertical-align: top; text-align: center">
                &nbsp;<asp:Button ID="btnLogin" runat="server" Font-Bold="True" OnClick="btnLogin_Click"
                    Style="background-position: center center; background-repeat: no-repeat; background-color: skyblue"
                    Text="Login" Width="75px" />
                <asp:Button ID="btncanlogin" runat="server" Font-Bold="True" Style="background-color: skyblue"
                    Text="Cancel" Width="77px" /></td>
        </tr>
        <tr>
            <td style="vertical-align: top; text-align: right" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

