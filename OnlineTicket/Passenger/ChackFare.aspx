<%@ Page Title="" Language="C#" MasterPageFile="~/Passenger/passengMaster.Master" AutoEventWireup="true" CodeBehind="ChackFare.aspx.cs" Inherits="OnlineTicket.Passenger.ChackFare" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border-right: maroon thick groove; border-top: maroon thick groove;
        border-left: maroon thick groove; width: 100%; border-bottom: maroon thick groove; height: 1px;">
        <tr>
            <td colspan="2" style="background-color: white; text-align: center">
            </td>
            <td colspan="1" style="background-color: white; text-align: center">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: white; text-align: center">
                <span style="color: black; font-family: Georgia"><strong>Chack Fare</strong></span></td>
            <td colspan="1" style="background-color: white; text-align: center">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: white; text-align: right; height: 20px;">
                <span style="color: #ff3333"><strong><span style="color: black">.</span></strong></span></td>
            <td colspan="1" style="height: 20px; background-color: white; text-align: right">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 25%; height: 24px">
                <strong><span style="color: #ff3333"></span>From:</strong></td>
            <td align="left" style="width: 51%; height: 24px">
                <asp:DropDownList ID="ddlfromfare" runat="server" Style="position: static" Width="163px" DataSourceID="SqlDataSource1" DataTextField="source" DataValueField="source" AutoPostBack="True">
                    <asp:ListItem>Ahmedabad</asp:ListItem>
                    <asp:ListItem>Rajkot</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Puna</asp:ListItem>
                    <asp:ListItem>Jamnagar</asp:ListItem>
                    <asp:ListItem>Udaypur</asp:ListItem>
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineDBConnectionString7 %>"
                    SelectCommand="SELECT [source] FROM [route_master]"></asp:SqlDataSource>
            </td>
            <td align="left" style="width: 70%; height: 24px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 25%; height: 24px;">
                <strong>To:</strong></td>
            <td align="left" style="width: 51%; height: 24px;">
                <asp:DropDownList ID="ddltofarechk" runat="server" Style="position: static" Width="163px" DataSourceID="SqlDataSource2" DataTextField="destination" DataValueField="destination" AutoPostBack="True">
                    <asp:ListItem>Ahmedabad</asp:ListItem>
                    <asp:ListItem>Ajmer</asp:ListItem>
                    <asp:ListItem>Anand</asp:ListItem>
                    <asp:ListItem>Baroda</asp:ListItem>
                    <asp:ListItem>Gandhidham</asp:ListItem>
                    <asp:ListItem>Gandhinagar</asp:ListItem>
                    <asp:ListItem>Jaipur</asp:ListItem>
                    <asp:ListItem>Jamnagar</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Surat</asp:ListItem>
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineDBConnectionString8 %>"
                    SelectCommand="SELECT DISTINCT [destination] FROM [route_master] WHERE ([source] = @source)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlfromfare" Name="source" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td align="left" style="width: 70%; height: 24px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 25%; height: 24px">
                <strong><span style="color: red"></span><span style="color: black">Date Of Journey&nbsp;</span></strong></td>
            <td align="left" style="width: 51%; height: 24px">
                <asp:TextBox ID="txtdatechk" runat="server" AutoPostBack="True"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/image/Calendar.gif"
                    Width="24px" OnClick="ImageButton1_Click" />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged">
                </asp:Calendar>
            </td>
            <td align="left" style="width: 70%; height: 24px">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellSpacing="3">
                    <Columns>
                        <asp:BoundField DataField="jdate" HeaderText="jdate" SortExpression="jdate" />
                        <asp:BoundField DataField="fare" HeaderText="fare" SortExpression="fare" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 25%">
                <strong>Bus Type : </strong>
            </td>
            <td align="left" style="width: 51%">
                <asp:DropDownList ID="ddlbustype" runat="server" Width="145px" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="bus_type" DataValueField="bus_type">
                    <asp:ListItem>AC Two By Two</asp:ListItem>
                    <asp:ListItem>NonAC Two By Two</asp:ListItem>
                    <asp:ListItem>AC Three By Two</asp:ListItem>
                    <asp:ListItem>NonAC Three By Two</asp:ListItem>
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineDBConnectionString9 %>"
                    SelectCommand="SELECT [bus_type] FROM [Bus_master]"></asp:SqlDataSource>
            </td>
            <td align="left" style="width: 70%">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="vertical-align: middle; height: 10px; text-align: center">
            </td>
            <td align="left" colspan="1" style="vertical-align: middle; height: 10px; text-align: center">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="vertical-align: middle; height: 5px; text-align: center">
                <asp:Button ID="btnchkfare" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke"
                    Height="23px" Style="color: #000000; background-color: skyblue" Text="CHACK FARE"
                    Width="135px" OnClick="btnchkfare_Click" /></td>
            <td align="left" colspan="1" style="vertical-align: middle; height: 5px; text-align: center">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="vertical-align: middle; height: 10px; text-align: center">
            </td>
            <td align="left" colspan="1" style="vertical-align: middle; height: 10px; text-align: center">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="height: 206px; vertical-align: top; text-align: center;">
                &nbsp;<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineDBConnectionString10 %>"
                    SelectCommand="SELECT DISTINCT [jdate], [fare] FROM [Fare_master] WHERE ([jdate] = @jdate)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtdatechk" Name="jdate" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;</td>
            <td align="left" colspan="1" style="vertical-align: top; height: 206px;
                text-align: center">
            </td>
        </tr>
        </table>
    <br />
    <br />
    <br />
    &nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
