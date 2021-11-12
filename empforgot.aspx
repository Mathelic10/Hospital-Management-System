<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="empforgot.aspx.cs" Inherits="empforgot" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Image ID="Image1" runat="server" style="z-index: 103; left: 116px; position: absolute; top: 277px" Height="250px" ImageUrl="~/pics/forgot_pass[1].jpg" Width="250px" />
    <asp:Label ID="Label1" runat="server" Text="Forgot Password....." style="z-index: 101; left: 488px; position: absolute; top: 282px" Font-Names="Modern" Font-Size="24pt" ForeColor="Red"></asp:Label>
    <table style="z-index: 101; left: 488px; position: absolute; top: 346px; color: white; font-family: 'Lucida Console';">
    <tr><td>Enter Your Login Id</td><td style="width: 124px">
        <asp:TextBox ID="lidtxt" runat="server"></asp:TextBox></td></tr></table>
    <table style="z-index: 101; left: 488px; position: absolute; top: 401px"><tr><td style="width: 124px">
        <asp:Button ID="pwdbtn" runat="server" Text="Get Your Password" OnClick="pwdbtn_Click" /></td></tr></table>
    <asp:Panel ID="Panel1" runat="server" Height="50px" Width="315px" style="z-index: 102; left: 488px; position: absolute; top: 461px">
     <table style="color: white; font-family: 'Lucida Console';">
    <tr><td>Your Password</td><td style="width: 124px"><asp:TextBox ID="pwdtxt" runat="server"></asp:TextBox></td></tr>
    </table>
    </asp:Panel>
</asp:Content>

