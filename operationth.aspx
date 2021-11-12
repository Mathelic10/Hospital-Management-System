<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="operationth.aspx.cs" Inherits="operationth" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" style="z-index: 100; left: 562px; position: absolute; top: 259px" Height="254px" ImageUrl="~/pics/operation1.jpg" Width="349px" />
    <asp:Label ID="Label1" runat="server" Text="Operation Theater..." style="z-index: 102; left: 130px; position: absolute; top: 179px" Font-Names="Modern" Font-Size="24pt" ForeColor="Red"></asp:Label>
    <table style="z-index: 102; left: 124px; color: white; font-family: 'Lucida Console'; position: absolute; top: 289px" id="TABLE1">
   <tr>
       <td>
            Patient Type
       </td>
       <td>
          <asp:DropDownList ID="pttypeddl" runat="server" AutoPostBack="True" Width="157px" OnSelectedIndexChanged="pttypeddl_SelectedIndexChanged">
              <asp:ListItem>...Select...</asp:ListItem>
              <asp:ListItem>In-Patient</asp:ListItem>
              <asp:ListItem>Out-Patient</asp:ListItem>
          </asp:DropDownList>
       </td>
   </tr>
   <tr>
       <td>
            Patient Id
       </td>
       <td>
           <asp:DropDownList ID="pidddl" runat="server" AutoPostBack="True" Width="157px" OnSelectedIndexChanged="pidddl_SelectedIndexChanged">
           </asp:DropDownList>  
       </td>
   </tr>
   <tr>
         <td>
             Patient Name
         </td>
         <td>
             <asp:TextBox ID="pntxt" runat="server"></asp:TextBox>
         </td>
   </tr>
   <tr>
         <td>
             Refered Doctor
         </td>
         <td>
             <asp:TextBox ID="doctxt" runat="server"></asp:TextBox>
         </td>
   </tr>
   <tr>
         <td>
              Operation Type
         </td>
         <td>
             <asp:DropDownList ID="optddl" runat="server" Width="156px" >
                 <asp:ListItem>...Select...</asp:ListItem>
                 <asp:ListItem>Heart</asp:ListItem>
                 <asp:ListItem>Brain</asp:ListItem>
                 <asp:ListItem>Lungs</asp:ListItem>
                 <asp:ListItem>Bone</asp:ListItem>
          </asp:DropDownList>
         </td>
   </tr>
   <tr>
       <td>
            Operation Result
       </td>
       <td>
          <asp:DropDownList ID="orddl" runat="server" Width="157px" OnSelectedIndexChanged="pttypeddl_SelectedIndexChanged">
              <asp:ListItem>...Select...</asp:ListItem>
              <asp:ListItem>Success</asp:ListItem>
              <asp:ListItem>Fail</asp:ListItem>
          </asp:DropDownList>
       </td>
   </tr>
    
</table>
<table style="z-index: 103; left: 204px; position: absolute; top: 475px">
<tr><td>
    <asp:Button ID="sbtn" runat="server" Text="Submit" OnClick="sbtn_Click" /></td>
    <td><asp:Button ID="canbtn" runat="server" Text="Cancel" /></td>
</tr>
</table>
</asp:Content>

