<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="emplogin.aspx.cs" Inherits="userlogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Employee Login Here..." style="z-index: 100; left: 165px; position: absolute; top: 297px" Font-Bold="False" Font-Names="Modern" Font-Size="24pt" ForeColor="Red"></asp:Label>
        <table style="z-index: 100; left: 164px; position: absolute; top: 369px; font-family: 'Lucida Console';">
            <tr>
                <td style="width: 100px; height: 21px">
                    <span style="color: white">UserID:</span></td>
                <td style="width: 100px; height: 21px">
                    <asp:TextBox ID="lidtxt" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <span style="color: white">Password:</span></td>
                <td style="width: 100px">
                    <asp:TextBox ID="pwdtxt" runat="server" TextMode="Password" Width="149px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                </td>
                <td style="width: 100px; height: 21px">
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="65px" OnClick="Button1_Click" /></td>
            </tr>
        </table>
        <asp:Menu ID="Menu1" runat="server" Font-Underline="True" ForeColor="white" Orientation="Horizontal"
            Style="z-index: 101; left: 138px; position: absolute; top: 501px; font-family: 'Lucida Console';">
            <Items>
                <asp:MenuItem Text="New user Signup" Value="New user Signup" NavigateUrl="~/empsignup.aspx"></asp:MenuItem>
                <asp:MenuItem Text="|Forgot Password?" Value="|Forgot Password?" NavigateUrl="~/empforgot.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
    <asp:Label ID="pwdlb" runat="server" Text="" style="z-index: 104; left: 265px; position: absolute; top: 531px; color: white; font-family: 'Lucida Console';"></asp:Label>
    <asp:Image ID="Image1" runat="server" Height="208px" ImageUrl="~/pics/hospital.jpg"
        Style="z-index: 103; left: 616px; position: absolute; top: 320px" Width="208px" />
</asp:Content>

