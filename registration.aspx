<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/pics/4.jpg" Style="z-index: 100;
        left: 88px; position: absolute; top: 200px" Width="488px" />
    <asp:Image ID="Image2" runat="server" Height="120px" ImageUrl="~/pics/6.jpg" Style="z-index: 101;
        left: 368px; position: absolute; top: 320px" Width="544px" />
    <asp:Label ID="Label1" runat="server" Text="Register Here..." style="z-index: 102; left: 384px; position: absolute; top: 150px" Font-Names="Modern" Font-Size="24pt" ForeColor="Red"></asp:Label>
    <asp:Menu ID="Menu1" runat="server" style="z-index: 104; left: 103px; position: absolute; top: 343px" Font-Names="Modern" ForeColor="Red" Height="89px">
        <Items>
            <asp:MenuItem NavigateUrl="~/ipregister.aspx" Text="&gt;  In-Patient" Value="&gt;  In-Patient">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/outpatient.aspx" Text="&gt;  Out-Patient" Value="&gt;  Out-Patient">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/home.aspx" Text="&gt;  Home" Value="&gt;  Home"></asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>

