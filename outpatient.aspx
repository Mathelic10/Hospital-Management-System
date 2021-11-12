<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="outpatient.aspx.cs" Inherits="doctorsignup" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Modern" Font-Size="24pt"
        ForeColor="Red" Style="z-index: 102; left: 92px; position: absolute; top: 171px"
        Text="Out-Patient Details "></asp:Label>
    
    <table style="font-weight: bold; width: 755px; z-index: 103; left: 184px; position: absolute; top: 233px;" >
       <tr>
          <td style="width: 210px"><span style="color: white; font-family: Lucida Console;">Patient Name :</span></td><td style="width: 468px"><asp:TextBox ID="pntxt" runat="server"></asp:TextBox></td>
       </tr>
       <tr>
          <td style="width: 210px"><span style="color: white; font-family: Lucida Console;">Patient Id :</span></td><td style="width: 468px"><asp:TextBox ID="pidtxt" Enabled="false" runat="server"></asp:TextBox></td>
       </tr>
       <tr>
         <td style="width: 210px"><span style="color: white; font-family: Lucida Console;">Age :</span></td><td style="width: 468px"><asp:TextBox ID="agetxt" runat="server"></asp:TextBox></td>
       </tr>
       <tr>
           <td style="width: 210px"><span style="color: white; font-family: Lucida Console;">Gender :</span></td><td style="width: 468px"><asp:DropDownList ID="gddl" runat="server" Width="154px">
              <asp:ListItem>Male</asp:ListItem>
              <asp:ListItem>Female</asp:ListItem>
             </asp:DropDownList></td>
       </tr>
       <tr>
         <td style="width: 210px; height: 40px;"><span style="color: white; font-family: Lucida Console;">Address :</span></td><td style="width: 468px; height: 40px;"><asp:TextBox ID="addtxt" runat="server" TextMode="MultiLine" Width="149px"></asp:TextBox></td>
       </tr>
       <tr>
        <td style="width: 210px; height: 24px;"><span style="color: white; font-family: Lucida Console;">Assigned Doctor :</span></td><td style="width: 468px; height: 24px;"><asp:DropDownList ID="doctorddl" runat="server" Width="154px">
           <asp:ListItem>Dr.venkateswarao</asp:ListItem>
           <asp:ListItem>Dr.Ramarao</asp:ListItem>
           <asp:ListItem>Dr.Teja</asp:ListItem>
           <asp:ListItem>Dr.Chinnareddy</asp:ListItem>
           </asp:DropDownList></td>
       </tr>
       <tr>
          <td style="width: 210px; height: 26px;"><span style="color: white; font-family: Lucida Console;">Phoen no(Home) :</span></td><td style="width: 468px; height: 26px;"><asp:TextBox ID="restxt" runat="server"></asp:TextBox></td>
       </tr>
       <tr>
          <td style="width: 210px"><span style="color: white; font-family: Lucida Console;">Phone no(mobile) :</span></td><td style="width: 468px"><asp:TextBox ID="mobtxt" runat="server"></asp:TextBox></td>
       </tr>   
       <tr>
          <td style="width: 210px"><span style="color: white; font-family: Lucida Console;">Op Date :</span></td><td style="width: 468px"><asp:TextBox ID="optxt" runat="server"></asp:TextBox></td>
       </tr>
       
       <tr>
           <td style="width: 210px"><span style="color: white; font-family: Lucida Console;">Department :</span></td><td style="width: 468px"><asp:DropDownList ID="depddl" runat="server" Width="154px">
             <asp:ListItem>Orthopedic</asp:ListItem>
             <asp:ListItem>Pediatric</asp:ListItem>
             <asp:ListItem>Neurology</asp:ListItem>
             <asp:ListItem>Urology</asp:ListItem>
             <asp:ListItem>Cardiology</asp:ListItem>
            </asp:DropDownList></td>
       </tr>
       </table>
       
    
    <table style="z-index: 102; left: 327px; position: absolute; top: 547px">
        <tr>
          <td style="width: 82px; height: 26px"><asp:Button ID="Button1" runat="server" Text="Save" Width="85px" OnClick="Button1_Click" /></td>
          <td style="width: 67px; height: 26px"><asp:Button ID="Button2" runat="server" Text="Cancel" Width="92px" /></td>
          
       </tr>
       </table>
</asp:Content>

