<%@ Page Language="C#" Debug ="true"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ipregister.aspx.cs" Inherits="ipregister" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="z-index: 102; left: 168px; font-family: 'Lucida Console'; position: absolute;
        top: 232px">
        <tr>
            <td style="width: 135px">
                <span style="color: #ffffff; font-family: Lucida Console">Patientname:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                &nbsp;</td>
            <td style="width: 100px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px">
                <span style="font-size: 11pt; color: #ffffff; font-family: Lucida Console">Patient ID:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server" Enabled="false"></asp:TextBox></td>
            <td style="width: 100px">
                <span style="color: #ffffff; font-family: Lucida Console">AdmissionDate:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox9" runat="server" ></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 135px">
                <span style="color: #ffffff; font-family: Lucida Console">Gender:</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
                <span style="color: #ffffff; font-family: Lucida Console">AdmissionTime:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 135px; height: 26px">
                <span style="color: #ffffff; font-family: Lucida Console">Age:</span></td>
            <td style="width: 100px; height: 26px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px">
                <span style="color: #ffffff; font-family: Lucida Console">Status:</span></td>
            <td style="width: 100px; height: 26px"><asp:DropDownList ID="DropDownList4" runat="server" Width="96px">
                <asp:ListItem>...select...</asp:ListItem>
                <asp:ListItem>Starting</asp:ListItem>
                <asp:ListItem>Mild</asp:ListItem>
                <asp:ListItem>Serious</asp:ListItem>
            </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 135px">
                <span style="color: #ffffff; font-family: Lucida Console">Address:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 100px">
                <span style="color: #ffffff; font-family: Lucida Console">Symptoms:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 135px">
                <span style="color: #ffffff; font-family: Lucida Console">Phoneno(resi):</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <span style="color: #ffffff">Department:</span></td>
            <td style="width: 100px"><asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Cardiology</asp:ListItem>
                    <asp:ListItem>Orthopedic</asp:ListItem>
                    <asp:ListItem>Gynacology</asp:ListItem>
                    <asp:ListItem>Dental</asp:ListItem>
                    <asp:ListItem>Opthology</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 135px">
                <span style="color: #ffffff; font-family: Lucida Console">Phoneno(mob):</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <span style="color: #ffffff">AssignedDoctor:</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList5" runat="server" Width="96px">
                    <asp:ListItem>...select...</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 135px">
                <span style="color: #ffffff; font-family: Lucida Console">Martialstatus:</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Unmarried</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
                <span style="color: #ffffff">Wardno:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox14" ForeColor ="Red"  Display="Dynamic" ErrorMessage = "Ward number has to be a number" />
        </tr>
        <tr>
            <td style="width: 135px">
                <span style="color: #ffffff; font-family: Lucida Console">Occupation:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <span style="color: #ffffff">Bedno:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" Font-Names="Modern" Font-Size="24pt" ForeColor="Red"
        Style="z-index: 100; left: 344px; position: absolute; top: 176px" Text="In-Patient Registration"></asp:Label>
    <table style="z-index: 103; left: 376px; position: absolute; top: 512px">
        <tr>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 100;
                    left: 0px; position: absolute; top: 0px" Text="Submit" />
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button2" runat="server" Text="Reset" /></td>
        </tr>
    </table>
</asp:Content>

