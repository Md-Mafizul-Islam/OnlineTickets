<%@ Page Title="" Language="C#" MasterPageFile="~/Passenger/passengMaster.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="OnlineTicket.Passenger.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE2_onclick() {

}

function TABLE4_onclick() {

}

// ]]>
</script>

<table style="width: 100%;">
        <tr>
            <td style="width: 100%; height: 1263px; vertical-align: top; text-align: left;">
                &nbsp;&nbsp;
                                        <br />
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table style="border-right: maroon thick groove; border-top: maroon thick groove;
        border-left: maroon thick groove; width: 100%; border-bottom: maroon thick groove">
                                        <tr>
                                            <td colspan="2" style="background-color: white; text-align: center">
                <span style="color: Black; font-family: Georgia"><strong>Bus Selection</strong></span></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="background-color: white; text-align: right; height: 21px;">
                <span style="color: #ff3333"><strong> <span style="color: black">&nbsp; &nbsp;
                </span></strong></span></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%; height: 24px;">
                                                <strong><span style="color: #ff3333"></span>From:</strong></td>
                                            <td align="left" style="width: 76%; height: 24px;">
                                                <asp:DropDownList ID="ddlfrom1" runat="server" Style="position: static" Width="203px" OnSelectedIndexChanged="ddlfrom_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="source" DataValueField="source">
                                                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineDBConnectionString %>"
                                                    SelectCommand="SELECT [source] FROM [route_master]"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%">
                                                <strong>To:</strong></td>
                                            <td align="left" style="width: 76%">
                                                <asp:DropDownList ID="ddlto1" runat="server" Style="position: static" Width="203px" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="destination" DataValueField="destination">
                                                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineDBConnectionString %>"
                                                    SelectCommand="SELECT DISTINCT [destination] FROM [route_master] WHERE ([source] = @source)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ddlfrom1" Name="source" PropertyName="SelectedValue"
                                                            Type="String" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%; height: 24px;">
                                                <strong>
                <span style="color: red"></span><span style="color: black"> Date Of Journey:&nbsp;</span></strong></td>
                                            <td align="left" style="width: 76%; height: 24px;">
                                                <asp:TextBox ID="txtdate1" runat="server"></asp:TextBox>&nbsp;<asp:ImageButton ID="ImageButton1"
                                                    runat="server" Height="20px" ImageUrl="~/image/Calendar.gif" OnClick="ImageButton1_Click"
                                                    Width="28px" />
                                                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged">
                                                </asp:Calendar>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%; height: 24px;">
                                                <strong>Bus Type : </strong>
                                            </td>
                                            <td align="left" style="width: 76%; height: 24px;">
                                                <asp:DropDownList ID="ddlbustype" runat="server" Width="145px" DataSourceID="SqlDataSource9" DataTextField="bus_type" DataValueField="bus_type" OnSelectedIndexChanged="ddlbustype_SelectedIndexChanged">
                                                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineDBConnectionString %>"
                                                    SelectCommand="SELECT [bus_type] FROM [bus_master]"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%; height: 24px">
                                                <strong>Time :</strong></td>
                                            <td align="left" style="width: 76%; height: 24px">
                                                <asp:DropDownList ID="ddltime" runat="server" OnSelectedIndexChanged="ddltime_SelectedIndexChanged"
                                                    Width="100px" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="jtime" DataValueField="jtime">
                                                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineDBConnectionString %>"
                                                    SelectCommand="SELECT DISTINCT [jtime] FROM [fare_master] WHERE ([jdate] = @jdate)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="txtdate1" Name="jdate" PropertyName="Text" Type="String" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%; height: 24px">
                                                <strong>Fare :</strong></td>
                                            <td align="left" style="width: 76%; height: 24px">
                                                &nbsp;<asp:DropDownList ID="ddlfare1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource8"
                                                    DataTextField="fare" DataValueField="fare">
                                                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineDBConnectionString %>"
                                                    SelectCommand="SELECT DISTINCT [fare] FROM [fare_master] WHERE ([jtime] = @jtime)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ddltime" Name="jtime" PropertyName="SelectedValue"
                                                            Type="String" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" colspan="2" style="height: 28px; vertical-align: top; text-align: center;">
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                &nbsp; &nbsp; &nbsp; &nbsp;<asp:View ID="View2" runat="server">
                                
                                <table style="border-right: maroon thick groove; border-top: maroon thick groove;
        border-left: maroon thick groove; width: 100%; border-bottom: maroon thick groove" id="TABLE2" onclick="return TABLE1_onclick()">
                                     <tr>
                                         <td colspan="3" style="height: 21px">
                                             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span
                                                 style="font-family: Georgia">Seat Allocation</span></strong></td>
                                     </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                <span style="color: #0000ff; font-family: Verdana"><strong style="color: #000000">Allocated Seats:</strong></span></td>
            <td style="width: 190px; height: 64px;">
                <asp:TextBox ID="txt2seatallot" runat="server" TextMode="MultiLine" Width="363px" Height="30px"></asp:TextBox>&nbsp;
                </td>
        </tr>
                                     <tr>
                                         <td colspan="2" style="height: 21px">
                                         </td>
                                         <td style="width: 190px; height: 21px;">
                                             &nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td colspan="3" style="height: 20px">
                                         </td>
                                     </tr>
        <tr>
            <td colspan="3" style="height: 108px; vertical-align: top; text-align: left;">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" BackColor="Gray" Height="33px"
                    RepeatDirection="Horizontal" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>32</asp:ListItem>
                    <asp:ListItem>33</asp:ListItem>
                    <asp:ListItem>41</asp:ListItem>
                </asp:CheckBoxList>
                <asp:CheckBoxList ID="CheckBoxList2" runat="server" BackColor="Gray" Height="33px"
                    RepeatDirection="Horizontal" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList2_SelectedIndexChanged">
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>40</asp:ListItem>
                </asp:CheckBoxList>
                <asp:CheckBoxList ID="CheckBoxList3" runat="server" BackColor="Gray" Height="33px"
                    Width="100%" AutoPostBack="True">
                    <asp:ListItem>39</asp:ListItem>
                </asp:CheckBoxList>
                <asp:CheckBoxList ID="CheckBoxList4" runat="server" BackColor="Gray" Height="33px"
                    RepeatDirection="Horizontal" Width="100%" AutoPostBack="True">
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>35</asp:ListItem>
                    <asp:ListItem>38</asp:ListItem>
                </asp:CheckBoxList>
                <asp:CheckBoxList ID="CheckBoxList5" runat="server" BackColor="Gray" Height="36px"
                    RepeatDirection="Horizontal" Width="101%" AutoPostBack="True">
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>36</asp:ListItem>
                    <asp:ListItem>37</asp:ListItem>
                </asp:CheckBoxList></td>
        </tr>
    </table>
                                </asp:View>
                                &nbsp;&nbsp;
                                <asp:View ID="View3" runat="server">
                                <table style="border-right: maroon thick groove; border-top: maroon thick groove;
        border-left: maroon thick groove; width: 100%; border-bottom: maroon thick groove">
                                     <tr>
                                         <td colspan="3" style="height: 21px">
                                             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span
                                                 style="font-family: Georgia">Seat Allocation</span></strong></td>
                                     </tr>
        <tr>
            <td colspan="3" style="height: 21px">
                <span style="font-family: Verdana"><strong>Allocated Seats: &nbsp; &nbsp;
                    <asp:TextBox ID="txt3seatallot" runat="server" TextMode="MultiLine" Width="383px"></asp:TextBox>
                    </strong></span></td>
        </tr>
                                    <tr>
                                        <td colspan="3" style="height: 20px">
                                        </td>
                                    </tr>
        <tr>
            <td colspan="3" style="height: 108px">
                <table id="Table1" align="center" border="0" cellpadding="1" cellspacing="3" style="border-right: black 1px solid;
                    border-top: black 1px solid; border-left: black 1px solid; border-bottom: black 1px solid;
                    height: 144px; width: 100%;">
                    <tr>
                        <td bgcolor="lightgrey" style="height: 22px">
                            
                                <asp:CheckBox ID="CheckBox42" runat="server" Text="01" Font-Bold="True"  /></td>
                        <td bgcolor="lightgrey" style="height: 22px">
                                <asp:CheckBox ID="CheckBox54" runat="server" Text="10" Font-Bold="True" /></td>
                        <td bgcolor="lightgrey" style="height: 22px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox65" runat="server" Text="11" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 22px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox77" runat="server" Text="20" /></strong></font></td>
                        <td bgcolor="lightgrey" style="width: 54px; height: 22px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox78" runat="server" Text="21" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 22px; width: 40px;">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox70" runat="server" Text="30" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 22px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox59" runat="server" Text="31" /></strong></font></td>
                        <td bgcolor="lightgrey" style="width: 53px; height: 22px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox61" runat="server" Text="40" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 22px">
                            <font color="#000000" face="Verdana" size="2"><strong><asp:CheckBox ID="CheckBox86" runat="server" Text="41" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 22px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox92" runat="server" Text="46" /></strong></font></td>
                    </tr>
                    <tr>
                        <td bgcolor="lightgrey" style="width: 54px; height: 27px;">
                            <asp:CheckBox ID="CheckBox52" runat="server" Text="02" Font-Bold="True" /></td>
                        <td bgcolor="lightgrey" style="height: 27px">
                                <asp:CheckBox ID="CheckBox44" runat="server" Text="09" Font-Bold="True" /></td>
                        <td bgcolor="lightgrey" style="height: 27px">
                            <font color="#000000" face="Verdana" size="2"><strong>&nbsp;<asp:CheckBox ID="CheckBox75" runat="server" Font-Bold="True" Text="12" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 27px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox67" runat="server" Text="19" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 27px; width: 54px;">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox68" runat="server" Text="22" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 27px; width: 40px;">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox80" runat="server" Text="29" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 27px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox49" runat="server" Text="32" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 27px; width: 53px;">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox62" runat="server" Text="39" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 27px">
                            <font color="#000000" face="Verdana" size="2"><strong><asp:CheckBox ID="CheckBox85" runat="server" Text="42" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 27px">
                            <font color="#000000" face="Verdana" size="2"><strong><asp:CheckBox ID="CheckBox91" runat="server" Text="47" /></strong></font></td>
                    </tr>
                    <tr>
                        <td bgcolor="lightgrey" style="width: 54px; height: 27px">
                            <asp:CheckBox ID="CheckBox63" runat="server" Font-Bold="True" Text="03" /></td>
                        <td bgcolor="lightgrey" style="height: 27px">
                            <asp:CheckBox ID="CheckBox43" runat="server" Font-Bold="True" Text="08" /></td>
                        <td bgcolor="lightgrey" style="height: 27px">
                                <asp:CheckBox ID="CheckBox76" runat="server" Text="13" Font-Bold="True" /></td>
                        <td bgcolor="lightgrey" style="height: 27px">
                                <asp:CheckBox ID="CheckBox56" runat="server" Text="18" Font-Bold="True" /></td>
                        <td bgcolor="lightgrey" style="width: 54px; height: 27px">
                                <asp:CheckBox ID="CheckBox57" runat="server" Text="23" Font-Bold="True" /></td>
                        <td bgcolor="lightgrey" style="width: 40px; height: 27px">
                                <asp:CheckBox ID="CheckBox79" runat="server" Text="28" Font-Bold="True" /></td>
                        <td bgcolor="lightgrey" style="height: 27px">
                                <asp:CheckBox ID="CheckBox50" runat="server" Text="33" Font-Bold="True" /></td>
                        <td bgcolor="lightgrey" style="width: 53px; height: 27px">
                            <asp:CheckBox ID="CheckBox72" runat="server" Font-Bold="True" Text="38" /></td>
                        <td bgcolor="lightgrey" style="height: 27px">
                            <asp:CheckBox ID="CheckBox84" runat="server" Text="43" Font-Bold="True" /></td>
                        <td bgcolor="lightgrey" style="height: 27px">
                            <asp:CheckBox ID="CheckBox90" runat="server" Text="48" Font-Bold="True" /></td>
                    </tr>
                    <tr>
                        <td bgcolor="white" colspan="9" style="height: 15px">
                        </td>
                        <td bgcolor="lightgrey" style="height: 15px">
                            <font color="#000000" face="Verdana" size="2"><strong><asp:CheckBox ID="CheckBox89" runat="server" Text="49" /></strong></font></td>
                    </tr>
                    <tr>
                        <td bgcolor="lightgrey" style="width: 54px; height: 54px;">
                                <asp:CheckBox ID="CheckBox73" runat="server" Text="04" Font-Bold="True" /></td>
                        <td bgcolor="lightgrey" style="height: 54px">
                            <asp:CheckBox ID="CheckBox53" runat="server" Font-Bold="True" Text="07" /></td>
                        <td bgcolor="lightgrey" style="height: 54px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox66" runat="server" Text="14" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 54px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox46" runat="server" Text="17" /></strong></font></td>
                        <td bgcolor="lightgrey" style="width: 54px; height: 54px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox47" runat="server" Text="24" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 54px; width: 40px;">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox69" runat="server" Text="27" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 54px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox60" runat="server" Text="34" /></strong></font></td>
                        <td bgcolor="lightgrey" style="width: 53px; height: 54px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox82" runat="server" Font-Bold="True" Text="37" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 54px">
                            <font color="#000000" face="Verdana" size="2"><strong><asp:CheckBox ID="CheckBox83" runat="server" Text="44" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 54px"><asp:CheckBox ID="CheckBox88" runat="server" Text="50" Font-Bold="True" /></td>
                    </tr>
                    <tr>
                        <td bgcolor="lightgrey" style="height: 11px; width: 54px;">
                            <font color="#000000" face="Verdana" size="2"><strong>
                            <asp:CheckBox ID="CheckBox74" runat="server" Font-Bold="True" Text="05" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 11px">
                            <asp:CheckBox ID="CheckBox64" runat="server" Font-Bold="True" Text="06" /></td>
                        <td bgcolor="lightgrey" style="height: 11px">
                                <asp:CheckBox ID="CheckBox55" runat="server" Text="15" Font-Bold="True" /></td>
                        <td bgcolor="lightgrey" style="height: 11px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox45" runat="server" Text="16" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 11px; width: 54px;">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox48" runat="server" Text="25" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 11px; width: 40px;">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox58" runat="server" Text="26" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 11px">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox71" runat="server" Text="35" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 11px; width: 53px;">
                            <font color="#000000" face="Verdana" size="2"><strong>
                                <asp:CheckBox ID="CheckBox81" runat="server" Text="36" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 11px">
                            <font color="#000000" face="Verdana" size="2"><strong><asp:CheckBox ID="CheckBox51" runat="server" Text="45" /></strong></font></td>
                        <td bgcolor="lightgrey" style="height: 11px">
                            &nbsp;<asp:CheckBox ID="CheckBox87" runat="server" Text="51" Font-Bold="True" Width="36px" /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
                                </asp:View>
                                <asp:View ID="View4" runat="server">
                                    <table style="border-right: maroon thick groove; border-top: maroon thick groove;
        border-left: maroon thick groove; width: 100%; border-bottom: maroon thick groove" id="TABLE4" onclick="return TABLE4_onclick()">
                                        <tr>
                                            <td colspan="2" style="background-color: white; text-align: center">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="background-color: white; text-align: center">
                                                <span style="color: Black; font-family: Georgia"><strong>Passenger Information</strong></span></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="background-color: white; text-align: right">
                                                <span style="color: #ff3333"><strong><span style="color: black"></span></strong></span></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%; height: 24px;">
                                                <strong><span style="color: #ff3333"></span>Full Name:</strong></td>
                                            <td align="left" style="width: 70%; height: 24px;">
                                                <asp:TextBox ID="txtname" runat="server" Width="391px"></asp:TextBox>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%">
                                                <strong>Age:</strong></td>
                                            <td align="left" style="width: 70%">
                                                <asp:TextBox ID="txtage" runat="server" Width="63px"></asp:TextBox>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%; height: 31px;">
                                                <strong><span style="color: black">Address:&nbsp;</span></strong></td>
                                            <td align="left" style="width: 70%; height: 31px; vertical-align: middle; text-align: left;">
                                                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="313px"></asp:TextBox>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%">
                                                <strong>Phone No : </strong>
                                            </td>
                                            <td align="left" style="width: 70%">
                                                <asp:TextBox ID="txtphone" runat="server" Width="313px"></asp:TextBox>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 25%">
                                                <strong>Email ID:</strong></td>
                                            <td align="left" style="width: 70%">
                                                <asp:TextBox ID="txtmailid" runat="server" Width="313px"></asp:TextBox>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="left" colspan="2" style="height: 28px">
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                
                            </asp:MultiView>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnsearch" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke"
                                                    Height="23px" Style="color: #000000; background-color: skyblue" Text="BACK"
                                                    Width="69px" OnClick="btnsearch_Click" />
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                &nbsp; &nbsp;
                <asp:Button ID="btnseragain" runat="server"
                                                        BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke" OnClick="btnseragain_Click"
                                                        Style="color: black; background-color: skyblue" Text="CONTINUE" Width="87px" />
                &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="WhiteSmoke" Text="SUBMIT" Style="color: black; background-color: skyblue" Width="91px" OnClick="Button2_Click" PostBackUrl="~/passenger/ticket.aspx" />
                </td>
        </tr>
    <tr>
        <td style="vertical-align: top; width: 100%; height: 9px; text-align: left">
            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr>
        <td style="vertical-align: top; width: 100%; height: 25px; text-align: center">
        </td>
    </tr>
    </table>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;&nbsp;
   
    
</asp:Content>
