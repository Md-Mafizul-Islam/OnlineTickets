<%@ Page Title="" Language="C#" MasterPageFile="~/Passenger/passengMaster.Master" AutoEventWireup="true" CodeBehind="cancle.aspx.cs" Inherits="OnlineTicket.Passenger.cancle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>

    <table style="border-right: maroon thick groove; border-top: maroon thick groove;
        border-left: maroon thick groove; width: 100%; border-bottom: maroon thick groove" id="TABLE1" onclick="return TABLE1_onclick()">
        <tr>
            <td align="left" colspan="2" style="font-weight: bold; vertical-align: middle; text-transform: capitalize;
                width: 100%; height: 25px; text-align: justify">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="font-weight: bold; vertical-align: middle; text-transform: capitalize;
                width: 100%; height: 11px; text-align: center">
                
                &nbsp;<span style="font-family: Georgia">Cancel Ticket</span></td>
        </tr>
        <tr>
            <td align="left" class="hedtd" colspan="2" style="font-weight: bold; text-transform: capitalize;
                width: 100%; height: 11px">
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; text-transform: capitalize; width: 30%;
                height: 25px">
                <span>&nbsp;Ticket Number :</span></td>
            <td align="left" style="width: 50%; height: 25px">
                <asp:TextBox ID="Texticketno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Texticketno"
                    ErrorMessage="Please Enter Ticket Number">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; text-transform: capitalize; width: 30%;
                height: 25px">
                Email-Id :</td>
            <td align="left" style="width: 50%; height: 25px">
                <asp:TextBox ID="Txtemail" runat="server" Width="335px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtemail"
                    ErrorMessage="please Enter Email-ID">*</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="vertical-align: middle; height: 11px; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="vertical-align: middle; height: 32px; text-align: center">
                &nbsp;
                <asp:Button ID="btncanclet" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke"
                    Height="23px" Style="color: #000000; background-color: skyblue" Text="CANCELTICKET"
                    Width="135px" OnClick="btncanclet_Click1" /></td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="font-weight: bold; text-transform: capitalize;
                height: 28px">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
