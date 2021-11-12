<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dischargesummary.aspx.cs" Inherits="dischargesummary" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/000000265324[1].jpg" Style="z-index: 100;
        left: 96px; position: absolute; top: 160px" />
    <asp:Label ID="Label1" runat="server" Font-Names="Modern" Font-Size="24pt" ForeColor="Red"
        Style="z-index: 101; left: 408px; position: absolute; top: 160px" Text="Discharge Summary......."></asp:Label>
    <table style="z-index: 101; left: 360px; position: absolute; top: 224px">
        <tr>
            <td style="width: 171px">
                <span style="color: #ffffff; font-family: Lucida Console">Enter Patient ID:</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="PID" runat="server" AutoPostBack="True" OnSelectedIndexChanged="PID_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 171px">
                <span style="color: #ffffff; font-family: Lucida Console">Patient Name:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" Enabled ="false"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 171px">
                <span style="color: #ffffff; font-family: Lucida Console">Joining Date:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" Enabled ="false" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 171px">
                <span style="color: #ffffff; font-family: Lucida Console">Discharge Date:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox3" Enabled ="false"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 171px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="left: -100px;
                    position: relative; top: 41px" Text="Summary Report" /></td>
        </tr>
    </table>
    <asp:Button ID="Button2" runat="server" Style="z-index: 102; left: 704px; position: absolute;
        top: 312px" Text="...." OnClick="Button2_Click" />
    <asp:Calendar ID="Calendar1" runat="server" Style="z-index: 103; left: 704px; position: absolute;
        top: 312px" Height="1px" Width="1px" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    <asp:GridView ID="GridView1" runat="server" style="z-index: 104; left: 418px; position: absolute; top: 441px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <asp:Menu ID="Menu1" runat="server" style="z-index: 106; left: 854px; position: absolute; top: 115px" Font-Names="Modern" ForeColor="Red">
        <Items>
            <asp:MenuItem NavigateUrl="~/home.aspx" Text="&gt;  Home" Value="&gt;  Home"></asp:MenuItem>
        </Items>
    </asp:Menu>
    </asp:Content>

