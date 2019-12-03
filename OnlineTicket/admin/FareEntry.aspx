<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="FareEntry.aspx.cs" Inherits="OnlineTicket.admin.FareEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border-right: maroon thick groove; border-top: maroon thick groove;
        border-left: maroon thick groove; width: 100%; border-bottom: maroon thick groove">
        <tr>
            <td colspan="3" style="text-align: center">
                 <strong><span
                    style="font-family: Georgia; vertical-align: top; text-align: center;"> &nbsp; &nbsp;
                     &nbsp; &nbsp; &nbsp; &nbsp; Fare Entry</span></strong></td>
        </tr>
        <tr>
            <td colspan="3" style="vertical-align: top; text-align: right; height: 21px;">
            </td>
        </tr>
    <tr>
        <td style="font-weight: bold; vertical-align: top; width: 30%; text-align: right; height: 21px;">
            Fare Id</td>
        <td style="width: 40%; height: 21px;">
            <asp:DropDownList ID="ddlfareid" runat="server" DataSourceID="SqlDataSource3" DataTextField="fare_id"
                DataValueField="fare_id" Width="66px">
            </asp:DropDownList><asp:TextBox ID="txtfareid" runat="server" Visible="False" Width="57px"></asp:TextBox></td>
        <td style="width: 100px; height: 21px;">
        </td>
    </tr>
        <tr>
            <td style="vertical-align: top; width: 30%; text-align: right; font-weight: bold;">
                Route Id:</td>
            <td style="width:40%">
                <asp:DropDownList ID="ddlrouteid" runat="server" Style="position: static" Width="66px" DataSourceID="SqlDataSource1" DataTextField="route_id" DataValueField="route_id" OnSelectedIndexChanged="ddlrouteid_SelectedIndexChanged">
                </asp:DropDownList>&nbsp;
            </td>
            <td style="width: 100px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30%; vertical-align: top; height: 21px; text-align: right; font-weight: bold;">
                Bus Type:</td>
            <td style="width: 40%; height: 21px;">
                <asp:DropDownList ID="ddlbustype" runat="server" Width="139px" DataSourceID="SqlDataSource2" DataTextField="bus_type" DataValueField="bus_type">
                </asp:DropDownList></td>
            <td style="width: 100px; height: 21px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30%; height: 21px; vertical-align: top; text-align: right; font-weight: bold;">
                Date:</td>
            <td style="width: 40%; height: 21px;">
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/Calendar.gif"
                    OnClick="ImageButton1_Click" Style="position: static" />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"
                    Visible="False"></asp:Calendar>
            </td>
            <td style="width: 100px; height: 21px;">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:OnlineDBConnectionString13 %>" OldValuesParameterFormatString="original_{0}"
                    SelectCommand="SELECT [route_id] FROM [route_master]" DeleteCommand="DELETE FROM [route_master] WHERE [route_id] = @original_route_id" InsertCommand="INSERT INTO [route_master] ([route_id]) VALUES (@route_id)">
                    <DeleteParameters>
                        <asp:Parameter Name="original_route_id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="route_id" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Online %>"
                    SelectCommand="SELECT [bus_type] FROM [Bus_master]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Online %>"
                    SelectCommand="SELECT [fare_id] FROM [Fare_master]"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td style="width: 30%; height: 14px; vertical-align: top; text-align: right; font-weight: bold;">
                Time:</td>
            <td style="width: 40%; height: 14px">
                <asp:TextBox ID="txttime" runat="server"></asp:TextBox>
                </td>
            <td style="width: 100px; height: 14px">
                </td>
        </tr>
    <tr>
        <td style="font-weight: bold; vertical-align: top; width: 30%; height: 14px; text-align: right">
            Fare:</td>
        <td style="width: 40%; height: 14px">
            <asp:TextBox ID="txtfare" runat="server"></asp:TextBox>&nbsp;
        </td>
        <td style="width: 100px; height: 14px">
        </td>
    </tr>
    <tr>
        <td colspan="3" style="vertical-align: top; height: 20px; text-align: center">
        </td>
    </tr>
        <tr>
            <td colspan="3" style="vertical-align: top; height: 26px; text-align: center">
                <asp:Button ID="btnaddfare" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke" Style="color: #000000; background-color: skyblue" Text="ADD" Width="95px" OnClick="btnaddfare_Click" />&nbsp;&nbsp;<asp:Button
                        ID="Button1" runat="server" Font-Bold="True" Style="background-color: skyblue"
                        Text="SAVE" Width="89px" OnClick="Button1_Click" />&nbsp;&nbsp;
                <asp:Button ID="btndelfare" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="Red"
                     Style=" background-color: skyblue" Text="DELETE"
                    Width="95px" OnClick="btndelfare_Click" />&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke"
                    Style=" background-color: skyblue" Text="UPDATE" Width="95px" OnClick="btnupdate_Click" /></td>
        </tr>
    </table>
</asp:Content>
