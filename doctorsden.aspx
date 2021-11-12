<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="doctorsden.aspx.cs" Inherits="doctorsden" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/pics/5.jpg" Style="z-index: 100;
        left: 448px; position: absolute; top: 272px" Width="464px" />
    <asp:Image ID="Image2" runat="server" Height="80px" ImageUrl="~/pics/10.jpg" Style="z-index: 101;
        left: 128px; position: absolute; top: 192px" Width="464px" />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Modern" Font-Size="24pt"
        ForeColor="Red" Style="z-index: 102; left: 632px; position: absolute; top: 216px"
        Text="Doctor's Den...."></asp:Label>
    <asp:Menu ID="Menu1" runat="server" Font-Names="Modern" ForeColor="Red" Height="172px"
        Style="z-index: 104; left: 136px; position: absolute; top: 296px" Width="112px">
        <Items>
            <asp:MenuItem Text="&gt;   Appointments" Value="&gt;Appointments" NavigateUrl="~/viewappointments.aspx"></asp:MenuItem>
            <asp:MenuItem Text="&gt;  Surgerys" Value="&gt;Surgerys" NavigateUrl="~/viewsurgeries.aspx"></asp:MenuItem>
            <asp:MenuItem Text="&gt;   Patients Info" Value="&gt;Patients Info" NavigateUrl="~/patientinfo.aspx"></asp:MenuItem>
            <asp:MenuItem Text="&gt;  TestReports" Value="&gt;  Logout" NavigateUrl="~/viewtests.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="&gt; Operation Reports" Value="&gt;  Logout" NavigateUrl="~/viewoperations.aspx">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/doctorlogin.aspx" Text="&gt;  Logout" Value="&gt;  Logout">
            </asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>

