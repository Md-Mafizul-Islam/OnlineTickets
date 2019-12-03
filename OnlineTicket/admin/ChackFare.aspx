<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="ChackFare.aspx.cs" Inherits="OnlineTicket.admin.ChackFare" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border-right: maroon thick groove; border-top: maroon thick groove;
        border-left: maroon thick groove; width: 100%; border-bottom: maroon thick groove">
        <tr>
            <td colspan="2" style="background-color: white; text-align: center">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: white; text-align: center">
                <span style="color: black; font-family: Georgia"><strong>Chack Fare</strong></span></td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: white; text-align: right">
                <span style="color: #ff3333"><strong><span style="color: black">.</span></strong></span></td>
        </tr>
        <tr>
            <td align="right" style="width: 25%; height: 24px">
                <strong><span style="color: #ff3333"></span>From:</strong></td>
            <td align="left" style="width: 70%; height: 24px">
                <asp:DropDownList ID="ddlfrom" runat="server" Style="position: static" Width="203px">
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Rajshahi</asp:ListItem>
                    <asp:ListItem>Cumilla</asp:ListItem>
                    <asp:ListItem>Khulna</asp:ListItem>
                    <asp:ListItem>Barisal</asp:ListItem>
                    <asp:ListItem>Rangpur</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" style="width: 25%">
                <strong>To:</strong></td>
            <td align="left" style="width: 70%">
                <asp:DropDownList ID="ddlto" runat="server" Style="position: static" Width="201px">
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Chatigong</asp:ListItem>
                    <asp:ListItem>Comilla</asp:ListItem>
                    <asp:ListItem>Khulna</asp:ListItem>
                    <asp:ListItem>Rajshahi</asp:ListItem>
                    <asp:ListItem>Rangpur</asp:ListItem>
                    <asp:ListItem>Maymanshingho</asp:ListItem>
                    <asp:ListItem>Shylhet</asp:ListItem>
                    <asp:ListItem>Barishal</asp:ListItem>
                    <asp:ListItem>Bogra</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" style="width: 25%; height: 24px">
                <strong><span style="color: red"></span><span style="color: black">Date Of Journey:&nbsp;</span></strong></td>
            <td align="left" style="width: 70%; height: 24px">
                &nbsp;
                <asp:DropDownList ID="ddldate" runat="server" Style="position: static" Width="66px">
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlmonth" runat="server" Style="position: static" Width="66px">
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlyear" runat="server" Style="position: static" Width="66px">
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" style="width: 25%">
                <strong>Bus Type : </strong>
            </td>
            <td align="left" style="width: 70%">
                <asp:DropDownList ID="ddlbustype" runat="server" Width="121px">
                    <asp:ListItem>AC</asp:ListItem>
                    <asp:ListItem>NonAC</asp:ListItem>
                    <asp:ListItem>Two By Two</asp:ListItem>
                    <asp:ListItem>Three By Two</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    <tr>
        <td align="left" colspan="2" style="height: 20px">
        </td>
    </tr>
        <tr>
            <td align="left" colspan="2" style="height: 20px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnchkfare" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke"
                    Height="23px" Style="color: #000000; background-color: skyblue" Text="CHACK FARE"
                    Width="135px" /></td>
        </tr>
    </table>
</asp:Content>
