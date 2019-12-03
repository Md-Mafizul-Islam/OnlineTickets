<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="BusEntry.aspx.cs" Inherits="OnlineTicket.admin.BusEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border-right: maroon thick groove; border-top: maroon thick groove;
        border-left: maroon thick groove; width: 100%; border-bottom: maroon thick groove">
        <tr>
            <td colspan="3" style="height: 21px; vertical-align: top; text-align:center;" class=" hedtd">
                
                &nbsp; &nbsp;<strong>Bus Entry</strong></td>
        </tr>
    <tr>
        <td class=" hedtd" colspan="3" style="height: 21px">
            </td>
    </tr>
        <tr>
            <td style="vertical-align: top; width: 30%; text-align: right; font-weight: bold; height: 24px;">
                &nbsp;Bus Id:</td>
            <td style="width: 40%; height: 24px;">
                <asp:DropDownList ID="ddlbusid" runat="server" Style="position: static" Width="40%" OnSelectedIndexChanged="ddlbusid_SelectedIndexChanged">
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px; height: 24px;">
            </td>
        </tr>
        <tr>
            <td style="width: 30%; vertical-align: top; height: 21px; text-align: right; font-weight: bold;">
                Bus Type:</td>
            <td style="width: 40%; height: 21px;">
                <asp:DropDownList ID="ddlbustype" runat="server" Width="139px">
                    <asp:ListItem>AC Two By Two</asp:ListItem>
                    <asp:ListItem>NonAC Two By Two</asp:ListItem>
                    <asp:ListItem>AC Three By Two</asp:ListItem>
                    <asp:ListItem>NonAc Three By Two</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px; height: 21px;">
            </td>
        </tr>
        <tr>
            <td style="width: 30%; height: 21px; vertical-align: top; text-align: right; font-weight: bold;">
                capacity:</td>
            <td style="width: 40%; height: 21px;">
                <asp:TextBox ID="txtcapacity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcapacity"
                    ErrorMessage="please Enter the capacity of Bus">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px; height: 21px;">
                </td>
        </tr>
    <tr>
        <td colspan="3" style="vertical-align: top; height: 20px; text-align: center">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
    </tr>
        <tr>
            <td colspan="3" style="vertical-align: top; height: 26px; text-align: center">
                <asp:Button ID="btnaddbus" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke"
                   Style="color: #000000; background-color: skyblue" Text="ADD" Width="95px" OnClick="btnaddbus_Click" />&nbsp;<asp:Button
                        ID="Button1" runat="server" Font-Bold="True" ForeColor="Yellow" Style="background-color: skyblue"
                        Text="SAVE" Width="89px" />&nbsp;
                <asp:Button ID="btndelbus" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="Red"
                    Style=" background-color: skyblue"  Text="DELETE"
                    Width="95px" />&nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="SteelBlue"
                    OnClick="btnupdate_Click" Style=" background-color: skyblue"
                    Text="UPDATE" Width="95px" /></td>
        </tr>
    <tr>
        <td colspan="3" style="vertical-align: top; height: 20px; text-align: center">
        </td>
    </tr>
    </table>

</asp:Content>
