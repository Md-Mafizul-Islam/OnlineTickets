<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="Route.aspx.cs" Inherits="OnlineTicket.admin.Route" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border-right: maroon thick groove; border-top: maroon thick groove;
        border-left: maroon thick groove; width: 100%; border-bottom: maroon thick groove">
       <tr>
           <td align="left" colspan="2" style="font-weight: bold; vertical-align: middle; text-transform: capitalize;
               width: 100%; height: 25px; text-align: justify">
           </td>
       </tr>
        <tr>
            <td align="left" colspan="2" style="font-weight: bold; text-transform: capitalize;
                width: 100%; height: 5px; vertical-align: middle; text-align: center; font-size: 20px;">
                Route Entry<br />
            </td>
        </tr>
         <tr>
             <td align="left" colspan="2" style="font-weight: bold; text-transform: capitalize;
                 width: 100%; height: 11px" class="hedtd">
             </td>
         </tr>
        <tr>
            <td align="right" style="font-weight: bold; text-transform: capitalize; width: 30%;
                ">
                Route Id:</td>
            <td align="left" style="width: 50%">
                &nbsp;<asp:DropDownList ID="ddlrouteid" runat="server" Style="position: static" Width="98px" DataSourceID="SqlDataSource2" DataTextField="route_id" DataValueField="route_id" AutoPostBack="True" OnSelectedIndexChanged="ddlrouteid_SelectedIndexChanged">
                    <asp:ListItem>Select one...</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineDBConnectionString12 %>" SelectCommand="SELECT [route_id] FROM [route_master]"></asp:SqlDataSource>
                <asp:TextBox ID="txtrouteid" runat="server" Visible="False" Width="75px" OnTextChanged="txtrouteid_TextChanged"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; text-transform: capitalize; width: 30%;
              height: 26px;">
                <span>&nbsp;From:</span></td>
            <td align="left" style="width: 50%; height: 26px;">
                <asp:TextBox ID="txtfrom" runat="server" Width="221px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; text-transform: capitalize; width: 30%;
              height: 25px;">
                <span>&nbsp;To<span style="color: #800000"></span> :</span></td>
            <td align="left" style="width: 50%; height: 25px;">
                    <asp:TextBox ID="txtto" runat="server" Width="221px"></asp:TextBox></td>
        </tr>
       <tr>
           <td align="left" colspan="2" style="vertical-align: middle; height: 11px; text-align: center">
           </td>
       </tr>
        <tr>
            <td align="left" colspan="2" style="height: 32px; vertical-align: middle; text-align: center;">
                <asp:Button ID="btnaddroute" runat="server" Font-Bold="True" OnClick="BtnAdd_Click" Style="background-color: skyblue"
                    Text="ADD" Width="95px" />
                &nbsp;<asp:Button ID="btnsave" runat="server" Text="SAVE" Width="89px" Style="background-color: skyblue" Font-Bold="True" OnClick="btnsave_Click" />
                &nbsp;<asp:Button ID="btndelroute" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke"
                     Style="color: #000000; background-color: skyblue" Text="DELETE"
                    Width="95px" OnClick="btndelroute_Click" /> &nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke"
                    OnClick="btnupdate_Click" Style="color: #000000; background-color: skyblue"
                    Text="MODIFY" Width="95px" />&nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; text-transform: capitalize;
               height: 28px;" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:OnlineDBConnectionString11 %>" DeleteCommand="DELETE FROM [route_master] WHERE [route_id] = @original_route_id"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [route_id] FROM [route_master]" InsertCommand="INSERT INTO [route_master] ([route_id]) VALUES (@route_id)">
                    <DeleteParameters>
                        <asp:Parameter Name="original_route_id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="route_id" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

