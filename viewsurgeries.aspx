<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewsurgeries.aspx.cs" Inherits="viewsurgeries" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="Label1" runat="server" Text="Surgery Info......." style="z-index: 100; left: 192px; color: red; position: absolute; top: 216px" Font-Names="Modern" Font-Size="24pt"></asp:Label>
<table style="z-index: 101; left: 112px; width: 382px; position: absolute; top: 288px" >
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
  <asp:Button ID="appbtn" runat="server" Text="View Surgeries" style="z-index: 101; left: 216px; position: absolute; top: 336px" OnClick="appbtn_Click" />
    <asp:GridView ID="GridView1" runat="server" style="z-index: 102; left: 176px; position: absolute; top: 392px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
     <asp:Button ID="backbtn" runat="server" Text="Back" style="z-index: 104; left: 819px; position: absolute; top: 143px" OnClick="backbtn_Click" Width="91px" />
</asp:Content>

