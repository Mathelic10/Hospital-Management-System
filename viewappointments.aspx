<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewappointments.aspx.cs" Inherits="viewappointments" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Rendezvous Of Patients" style="z-index: 100; left: 118px; color: red; position: absolute; top: 202px" Font-Names="Modern" Font-Size="24pt"></asp:Label>
    <table style="z-index: 101; left: 199px; width: 382px; position: absolute; top: 290px" >
    <tr>
       <td style="width: 210px; height: 24px;">
           <span style="color: white"><span style="font-family: Lucida Console;">
           Doctor Name :</span> </span>
       </td>
       <td style="height: 24px">
          <asp:DropDownList ID="doctorddl" runat="server" Width="155px" AutoPostBack="True" OnSelectedIndexChanged="doctorddl_SelectedIndexChanged">
          </asp:DropDownList>
       </td>
    </tr>
    </table>
    <asp:Button ID="appbtn" runat="server" Text="View Appointments" style="z-index: 101; left: 290px; position: absolute; top: 346px" OnClick="appbtn_Click" />
    <asp:GridView ID="GridView1" runat="server" style="z-index: 102; left: 263px; position: absolute; top: 418px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <asp:Button ID="backbtn" runat="server" Text="Back" style="z-index: 104; left: 818px; position: absolute; top: 141px" OnClick="backbtn_Click" Width="91px" />
    </asp:Content>

