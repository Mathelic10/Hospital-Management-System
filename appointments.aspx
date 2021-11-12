<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="appointments.aspx.cs" Inherits="reception" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Modern" Font-Size="24pt"
        ForeColor="White" Style="z-index: 100; left: 520px; position: absolute; top: 232px; color: red;"
        Text="Rendezvous...."></asp:Label>
<table style="width: 320px; z-index: 101; left: 440px; position: absolute; top: 304px; color: white; font-family: 'Lucida Console';">
<tr>
    <td style="width: 682px; height: 20px">
        Patient Id
    </td>
    <td style="width: 94px; height: 20px">
        <asp:DropDownList ID="pidddl" runat="server" Width="155px" AutoPostBack="True" OnSelectedIndexChanged="pidddl_SelectedIndexChanged" >
        </asp:DropDownList>
        </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">
    Patient Name</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="pntxt" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">
    Age
    </td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="agtxt" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">
    Department
    </td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="deptxt" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">
    Doctor
    </td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="doctxt" runat="server"></asp:TextBox>
    </td>
</tr>
</table>
<table style="z-index: 102; left: 520px; position: absolute; top: 464px">
        <tr>
        <td style="width: 83px; height: 26px">
          <asp:Button ID="Button1" runat="server" Text="Save" Width="85px" OnClick="Button1_Click"  />
        </td>
       <td style="width: 67px; height: 26px">
             <asp:Button ID="Button2" runat="server" Text="Cancel" Width="92px" OnClick="Button2_Click" />
       </td>
       </tr>
       </table>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/appointments.jpg" Style="z-index: 101;
        left: 88px; position: absolute; top: 304px" />
    <asp:Menu ID="Menu1" runat="server" Font-Names="Modern" Font-Size="14pt" ForeColor="Red"
        Style="z-index: 103; left: 104px; position: absolute; top: 232px">
        <Items>
            <asp:MenuItem NavigateUrl="~/viewappointments.aspx" Text="&gt;   View Appointments"
                Value="&gt;   View Appointments"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/doctorsden.aspx" Text="&gt;   Home" Value="&gt;   Home">
            </asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>

