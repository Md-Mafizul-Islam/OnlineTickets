<%@ Page Title="" Language="C#" MasterPageFile="~/Passenger/passengMaster.Master" AutoEventWireup="true" CodeBehind="ticket.aspx.cs" Inherits="OnlineTicket.Passenger.ticket" %>
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
                                                <span style="color: Black; font-family: Georgia"><strong>Confirmation</strong></span></td>
                                        </tr>
    <tr>
        <td colspan="2" style="background-color: white; text-align: center; height: 21px;">
        </td>
    </tr>
    <tr>
        <td align="right" style="width: 25%; height: 24px">
            <strong>Ticket Number:</strong></td>
        <td align="left" style="width: 70%; height: 24px">
            <asp:TextBox ID="txtticketno" runat="server" Width="171px"></asp:TextBox></td>
    </tr>
                                        <tr>
                                            <td align="right" style="width: 25%; height: 24px;">
                                                <strong>Source:</strong></td>
                                            <td align="left" style="width: 70%; height: 24px;">
                                                <asp:TextBox ID="txtsource" runat="server" Width="241px" ReadOnly="True"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%">
                                                <strong>Destination:</strong></td>
                                            <td align="left" style="width: 70%">
                                                <asp:TextBox ID="txtdesti" runat="server" Width="241px" ReadOnly="True"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%; height: 26px;">
                                                <strong>Date Of Journey: </strong>
                                            </td>
                                            <td align="left" style="width: 70%; height: 26px;">
                                                <asp:TextBox ID="txtdate" runat="server" Width="139px" ReadOnly="True"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%">
                                                <strong>Time Of Journey:</strong></td>
                                            <td align="left" style="width: 70%">
                                                <asp:TextBox ID="txttime" runat="server" Width="139px" ReadOnly="True"></asp:TextBox></td>
                                        </tr>
     <tr>
         <td align="right" style="width: 25%; height: 21px;">
             <strong>Bus Type:</strong></td>
         <td align="left" style="width: 70%; height: 21px;">
             <asp:TextBox ID="txtbustype" runat="server" Width="183px" ReadOnly="True"></asp:TextBox></td>
     </tr>
     <tr>
         <td align="right" style="width: 25%; height: 21px">
             <strong>Seat Numbers:</strong></td>
         <td align="left" style="width: 70%; height: 21px">
             <asp:TextBox ID="txtseatnos" runat="server" Width="417px" ReadOnly="True"></asp:TextBox></td>
     </tr>
     <tr>
         <td align="right" style="width: 25%; height: 21px">
             <strong>Total Bill:</strong></td>
         <td align="left" style="width: 70%; height: 21px">
             <asp:TextBox ID="txttotalbill" runat="server" Width="163px" ReadOnly="True"></asp:TextBox></td>
     </tr>
    <tr>
        <td align="left" colspan="2" style="height: 20px">
        </td>
    </tr>
                                        <tr>
                                            <td align="left" colspan="2" style="height: 28px">
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                <asp:Button ID="btnok" runat="server" BackColor="Gray" Font-Bold="True"
                                                    ForeColor="WhiteSmoke" Height="23px" OnClick="btnok_Click" Style="color: #000000;
                                                    background-color: skyblue" Text="OK" Width="95px" PostBackUrl="~/Passenger/MainPage.aspx" />
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                            </td>
                                        </tr>
</table>
</asp:Content>

