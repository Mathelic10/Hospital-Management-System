<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="patientinfo.aspx.cs" Inherits="patientinfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
    <asp:Image ID="Image1" runat="server" Height="96px" ImageUrl="~/pics/8.jpg" Style="z-index: 100;
        left: 120px; position: absolute; top: 240px" Width="520px" />
    <asp:Image ID="Image2" runat="server" Height="88px" ImageUrl="~/pics/3.jpg" Style="z-index: 101;
        left: 352px; position: absolute; top: 328px" Width="536px" />
    <asp:Label ID="Label1" runat="server" Font-Names="Modern" Font-Size="24pt" ForeColor="Red"
        Style="z-index: 102; left: 664px; position: absolute; top: 272px" Text="Patient Info........."></asp:Label>
    <table style="z-index: 101; left: 120px; width: 344px; position: absolute; top: 440px;
        height: 48px">
        <tr>
            <td style="width: 262px">
                <span style="color: #ffffff; font-family: Lucida Console">Enter Patient ID:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 262px">
                <span style="color: #ffffff; font-family: Lucida Console">Select Type:</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="type" runat="server" AutoPostBack="True" >
                    <asp:ListItem>....select....</asp:ListItem>
                    <asp:ListItem>In-Patient</asp:ListItem>
                    <asp:ListItem>Out-Patient</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 103;
        left: 256px; position: absolute; top: 504px" Text="Search" />
    

<div style="width:300px;height:100px;overflow:auto;top:440px;z-index: 105; left: 480px;position: absolute">

 <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" >
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
     <RowStyle BackColor="#EFF3FB" />
     <EditRowStyle BackColor="#2461BF" />
    </asp:GridView></div>
    <asp:Button ID="Button2" runat="server" Text="Back" style="z-index: 105; left: 843px; position: absolute; top: 145px" OnClick="Button2_Click" Width="71px" />
    
</asp:Content>

