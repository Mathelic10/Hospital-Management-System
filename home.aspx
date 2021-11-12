<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;
    <asp:Image ID="Image1" runat="server" Height="128px" ImageUrl="~/pics/3.jpg" Style="z-index: 101;
        left: 272px; position: absolute; top: 224px" Width="448px" />
    <asp:Image ID="Image2" runat="server" Height="128px" ImageUrl="~/pics/2.jpg" Style="z-index: 102;
        left: 416px; position: absolute; top: 352px" Width="504px" />
    <asp:Menu ID="Menu2" runat="server"
        Font-Names="Modern" ForeColor="Red" Style="z-index: 104; left: 88px; position: absolute;
        top: 224px" Width="184px" Height="256px">
        <Items>
            <asp:MenuItem Text="|   Login" Value="New Item" NavigateUrl="~/Administration.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   Laboratory" Value="New Item" NavigateUrl="~/laborataries.aspx"></asp:MenuItem>
            <asp:MenuItem Text="|   Patient Registration" Value="New Item" NavigateUrl="~/registration.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   DischargeSummary" Value="|   DischargeSummary" NavigateUrl="~/dischargesummary.aspx"></asp:MenuItem>
            <asp:MenuItem Text="|   Reception" Value="|   Reception" NavigateUrl="~/receptionhome.aspx"></asp:MenuItem>
            <asp:MenuItem Text="|   Medicalstore" Value="|   Medicalstore" NavigateUrl="~/pharmacy.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>

