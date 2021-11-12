<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="laborataries.aspx.cs" Inherits="laborataries" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Laboratory" style="z-index: 100; left: 680px; position: absolute; top: 312px; width: 213px;" Font-Names="Modern" Font-Size="32pt" ForeColor="Red"></asp:Label>
    &nbsp;
    <asp:Menu ID="Menu1" runat="server" style="z-index: 101; left: 96px; position: absolute; top: 400px" Font-Names="Modern" Font-Size="12pt" ForeColor="Red" Height="80px" Width="128px">
        <Items>
            <asp:MenuItem Text="&gt;    Operation Theater" Value="New Item" NavigateUrl="~/operationth.aspx"></asp:MenuItem>
            <asp:MenuItem Text="&gt;    Medical Tests" Value="&gt; Medical Tests" NavigateUrl="~/medicaltests.aspx"></asp:MenuItem>
            <asp:MenuItem Text="&gt;    Home" Value="&gt;    Home"></asp:MenuItem>
        </Items>
    </asp:Menu> 
    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/1.jpg" Style="z-index: 102;
        left: 88px; position: absolute; top: 248px" />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/10.jpg" Style="z-index: 104;
        left: 328px; position: absolute; top: 376px" />
 </asp:Content>

