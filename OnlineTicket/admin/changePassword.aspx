<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="changePassword.aspx.cs" Inherits="OnlineTicket.admin.changePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table style="border-right: maroon thick groove; border-top: maroon thick groove;
        border-left: maroon thick groove; width: 100%; border-bottom: maroon thick groove" id="TABLE1" onclick="return TABLE1_onclick()">
                                        <tr>
                                            <td colspan="2" style="background-color: white; text-align: center">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="background-color: white; text-align: center">
                                                <span style="color: Black; font-family: Georgia"><strong>Change Your Password</strong></span></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="background-color: white; text-align: right; height: 21px;">
                                                <span style="color: #ff3333"><strong><span style="color: black">.</span></strong></span></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 26%; height: 24px;">
                                                <strong><span style="color: #ff3333"></span>User Name :</strong></td>
                                            <td align="left" style="width: 70%; height: 24px;">
                                                <asp:TextBox ID="txtname" runat="server" Width="289px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Valid User name" ControlToValidate="txtname">*</asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 26%; height: 22px;">
                                                <strong>Current Password :</strong></td>
                                            <td align="left" style="width: 70%; height: 22px;">
                                                <asp:TextBox ID="txtcurpassword" runat="server" Width="257px" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcurpassword"
                                                    ErrorMessage="Please Enter Valid Current Password">*</asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 26%; height: 11px;">
                                                <strong><span style="color: black">New Password :&nbsp;</span></strong></td>
                                            <td align="left" style="width: 70%; height: 11px; vertical-align: middle; text-align: left;">
                                                <asp:TextBox ID="Txtnpas" runat="server" Width="257px" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtnpas"
                                                    ErrorMessage="Please Enter New Password">*</asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 26%">
                                                <strong>Confirm New Password : </strong>
                                            </td>
                                            <td align="left" style="width: 70%">
                                                <asp:TextBox ID="txtcnpas" runat="server" Width="257px" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcnpas"
                                                    ErrorMessage="Please Enter Confirm New Password">*</asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txtnpas"
                                                    ControlToValidate="txtcnpas" ErrorMessage="New password and confirm password must Same">*</asp:CompareValidator></td>
                                        </tr>
                                        <tr>
                                            <td align="left" colspan="2" style="height: 63px; vertical-align: middle; text-align: center;">
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:ValidationSummary ID="ValidationSummary1"
                                                    runat="server" />
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            </td>
                                        </tr>
    <tr>
        <td align="left" colspan="2" style="vertical-align: top; height: 28px; text-align: center">
            <asp:Button ID="btnsave" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke"
                 OnClick="btnsave_Click" Style="color: #000000; background-color: skyblue"
                Text="SAVE" Width="93px" /> &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncanclet" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke"
                OnClick="btncanclet_Click" Style="color: #000000;  background-color: skyblue" Text="CANCEL"
                Width="85px" /></td>
    </tr>
    <tr>
        <td align="left" colspan="2" style="vertical-align: top; height: 11px; text-align: center">
        </td>
    </tr>
                                    </table>
</asp:Content>

