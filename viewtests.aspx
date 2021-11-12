<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewtests.aspx.cs" Inherits="viewtests" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="Label1" runat="server" Text="Test Reports Of Patients" style="z-index: 100; left: 136px; color: red; position: absolute; top: 224px" Font-Names="Modern" Font-Size="24pt"></asp:Label>
    <table style="z-index: 101; left: 96px; width: 382px; position: absolute; top: 288px" >
    <tr>
       <td style="width: 210px; height: 24px;">
           <span style="color: white"><span style="font-family: Lucida Console;">
           Test Type :</span> </span>
       </td>
       <td style="height: 24px">
          <asp:DropDownList ID="testddl" runat="server" Width="155px" OnSelectedIndexChanged="pttyddl_SelectedIndexChanged" >
          </asp:DropDownList>
       </td>
    </tr>
    <tr>
       <td style="width: 210px; height: 24px;">
           <span style="color: white"><span style="font-family: Lucida Console;">
           Patient Type :</span> </span>
       </td>
       <td style="height: 24px">
          <asp:DropDownList ID="pttyddl" runat="server" Width="155px" AutoPostBack="True" OnSelectedIndexChanged="pttyddl_SelectedIndexChanged" >
          </asp:DropDownList>
       </td>
    </tr>
    
    <tr>
       <td style="width: 210px; height: 24px;">
           <span style="color: white"><span style="font-family: Lucida Console;">
           Patient Id :</span> </span>
       </td>
       <td style="height: 24px">
          <asp:DropDownList ID="pidddl" runat="server" Width="155px" AutoPostBack="True" >
          </asp:DropDownList>
       </td>
    </tr>
    
    </table>
    <asp:Button ID="appbtn" runat="server" Text="View TestReorts" style="z-index: 101; left: 192px; position: absolute; top: 392px" OnClick="appbtn_Click" />
    <div style="width:300px;height:100px;overflow:auto;z-index: 102; left: 133px; position: absolute; top: 483px">
    <asp:GridView ID="GridView1" runat="server"  BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView></div>
    <asp:Image ID="Image1" runat="server" Height="184px" ImageUrl="~/pics/medical_report[1].jpg"
        Style="z-index: 103; left: 621px; position: absolute; top: 248px" Width="232px" />
    <asp:Button ID="Button1" runat="server" Text="Back" style="z-index: 105; left: 838px; position: absolute; top: 145px" OnClick="Button1_Click" Width="69px" />    
</asp:Content>

