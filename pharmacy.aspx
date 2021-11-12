<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pharmacy.aspx.cs" Inherits="pharmacy" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
    <asp:Image ID="Image1" runat="server" Height="184px" ImageUrl="~/pics/1135642872_330beb809b[1].jpg"
        Style="z-index: 100; left: 88px; position: absolute; top: 259px" Width="232px" />
    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Modern" Font-Size="24pt"
        ForeColor="Red" Style="z-index: 101; left: 394px; position: absolute; top: 166px"
        Text="PHARMACY"></asp:Label>
    <table style="z-index: 101; left: 469px; position: absolute; top: 258px">
        <tr>
            <td style="width: 149px">
                <span style="color: #ffffff; font-family: Lucida Console">PatientvType:</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="ptntyp" runat="server" AutoPostBack="True" Width="96px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>In-Patient</asp:ListItem>
                    <asp:ListItem>Out-Patient</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 149px">
                <span style="color: #ffffff; font-family: Lucida Console">PatientID:</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="ptntid" runat="server" AutoPostBack="True" Width="96px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 149px">
                <span style="color: #ffffff; font-family: Lucida Console">Department:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="dpt" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 149px">
                <span style="color: #ffffff; font-family: Lucida Console">Patient Name:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="ptntname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 149px">
                <span style="color: #ffffff; font-family: Lucida Console">Medicine Used:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="mdcnusd" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 149px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" style="position: absolute" /></td>
        </tr>
    </table>
    <asp:Menu ID="Menu1" runat="server" Font-Names="Modern" Font-Size="14pt" ForeColor="Red"
        Style="z-index: 103; left: 848px; position: absolute; top: 112px">
        <Items>
            <asp:MenuItem NavigateUrl="~/emphome.aspx" Text="&gt;   Home" Value="&gt;   Home"></asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>

