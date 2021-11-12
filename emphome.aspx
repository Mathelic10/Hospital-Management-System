<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="emphome.aspx.cs" Inherits="emphome" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/1.jpg" Style="z-index: 100;
        left: 88px; position: absolute; top: 192px" Width="504px" />
    <asp:Image ID="Image2" runat="server" Height="120px" ImageUrl="~/pics/13.jpg" Style="z-index: 101;
        left: 352px; position: absolute; top: 304px" Width="560px" />
    <asp:Label ID="Label1" runat="server" Font-Names="Modern" Font-Size="24pt" ForeColor="Red"
        Style="z-index: 102; left: 624px; position: absolute; top: 232px" Text="Underling........"></asp:Label>
    <asp:Menu ID="Menu1" runat="server" Font-Names="Modern" Font-Size="14pt" ForeColor="Red"
        Height="80px" Style="z-index: 104; left: 96px; position: absolute; top: 336px"
        Width="136px">
        <Items>
            <asp:MenuItem NavigateUrl="~/laborataries.aspx" Text="&gt;   Labtechnicians" Value="&gt;   Labtechnicians">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/pharmacy.aspx" Text="&gt;   Pharmacy" Value="&gt;   Pharmacy">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/home.aspx" Text="&gt;   Home" Value="&gt;   Home"></asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>

