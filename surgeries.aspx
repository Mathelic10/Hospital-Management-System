<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="surgeries.aspx.cs" Inherits="surgeries" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Modern" Font-Size="24pt"
        ForeColor="White" Style="z-index: 100; left: 146px; position: absolute; top: 184px; color: red;"
        Text="Surgery Information  "></asp:Label>
<table style="width: 306px; z-index: 101; left: 239px; position: absolute; top: 289px; color: white; font-family: 'Lucida Console'; height: 113px;">
<tr>
    <td style="width: 682px; height: 20px">
        Patient Id
    </td>
    <td style="width: 115px; height: 20px">
        <asp:DropDownList ID="pidddl" runat="server" Width="155px" AutoPostBack="True" OnSelectedIndexChanged="pidddl_SelectedIndexChanged" >
        </asp:DropDownList>
        </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">
    Patient Name</td>
    <td style="width: 115px; height: 20px">
    <asp:TextBox ID="pntxt" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">
    Age
    </td>
    <td style="width: 115px; height: 20px">
    <asp:TextBox ID="agtxt" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td style="width: 682px; height: 6px">
    Surgery Date
    </td>
    <td style="width: 115px; height: 6px">
    <asp:TextBox ID="sdtxt" runat="server"></asp:TextBox>
    </td>
    
</tr>
<tr>
    <td style="width: 682px; height: 20px">
    Department
    </td>
    <td style="width: 115px; height: 20px">
    <asp:TextBox ID="deptxt" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">
    Doctor
    </td>
    <td style="width: 115px; height: 20px">
    <asp:TextBox ID="doctxt" runat="server"></asp:TextBox>
    </td>
</tr>
</table>
<table style="z-index: 102; left: 289px; position: absolute; top: 485px">
        <tr>
        <td style="width: 82px; height: 26px">
          <asp:Button ID="Button1" runat="server" Text="Save" Width="85px" OnClick="Button1_Click"  />
        </td>
       <td style="width: 67px; height: 26px">
             <asp:Button ID="Button2" runat="server" Text="Cancel" Width="92px" OnClick="Button2_Click" />
       </td>
       </tr>
       </table>
    <asp:Calendar ID="Calendar1" runat="server" style="z-index: 102; left: 548px; color: white; position: absolute; top: 376px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px">
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <SelectorStyle BackColor="#CCCCCC" />
        <WeekendDayStyle BackColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
    </asp:Calendar>
</asp:Content>

