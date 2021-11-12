<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" style="z-index: 100; left: 364px; position: absolute; top: 199px" ImageUrl="~/pics/ecg240x3201.gif" />
    <asp:Image ID="Image2" runat="server" style="z-index: 101; left: 364px; position: absolute; top: 491px" ImageUrl="~/pics/main1.jpg" />
    <asp:Menu ID="Menu1" runat="server" style="z-index: 103; left: 366px; position: absolute; top: 478px" Font-Names="Modern" Font-Size="24pt" Font-Underline="True" ForeColor="Red">
        <Items>
            <asp:MenuItem NavigateUrl="~/home.aspx" Text="Click Here To Enter " Value="Click To Enter ">
            </asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>

