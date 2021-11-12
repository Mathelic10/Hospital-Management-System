<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="medicaltests.aspx.cs" Inherits="medicaltests" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Image ID="Image1" runat="server" style="z-index: 100; left: 588px; position: absolute; top: 240px" Height="249px" ImageUrl="~/pics/lab1.jpg" Width="327px"/>
    <asp:Label ID="Label1" runat="server" Text="Medical Tests" style="z-index: 101; left: 113px; position: absolute; top: 150px" Font-Names="Modern" Font-Size="24pt" ForeColor="Red"></asp:Label>
<table style="z-index: 102; left: 112px; color: white; font-family: 'Lucida Console'; position: absolute; top: 203px" id="TABLE1">
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
              Medical Test Type
         </td>
         <td>
             <asp:DropDownList ID="mttddl" runat="server" AutoPostBack="True" Width="156px" OnSelectedIndexChanged="mttddl_SelectedIndexChanged">
                 <asp:ListItem>...Select...</asp:ListItem>
                 <asp:ListItem>Blood Test</asp:ListItem>
                 <asp:ListItem>Urine Test</asp:ListItem>
          </asp:DropDownList>
         </td>
   </tr>
    
</table>
    <asp:Button ID="Button1" runat="server" Text="Ok" style="z-index: 105; left: 224px; position: absolute; top: 329px" OnClick="Button1_Click" Width="91px" />
<asp:Panel ID="Panel1" runat="server" Height="200px" Width="200px" style="z-index: 103; left: 115px; position: absolute; top: 368px; color: white; font-family: 'Lucida Console';">
   
    <table style="color: white; font-family: 'Lucida Console'; width: 353px;" >
         <tr>
              <td>
                  Blood Group
              </td>
              <td>
                  <asp:TextBox ID="bgtxt" runat="server"></asp:TextBox>
              </td>
        </tr>
        <tr>
              <td>Haemoglobin</td>
              <td>
                  <asp:TextBox ID="hmtxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
              <td>
                    Blood sugar 
              </td>
              <td>
                  <asp:TextBox ID="bstxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
              <td>
                   Serum Uric Acid
              </td>
              <td> 
                  <asp:TextBox ID="suatxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
             <td>
                 Report Description
             </td>
             <td>
                   <asp:TextBox ID="rd1txt" runat="server"></asp:TextBox>
             </td>
         </tr>
         
    </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="200px" Width="200px" style="z-index: 104; left: 116px; position: absolute; top: 373px; color: white; font-family: 'Lucida Console';">
     
    <table style="color: white; font-family: 'Lucida Console'; width: 353px;" >
         <tr>
              <td style="height: 26px">
                 Color
              </td>
              <td style="height: 26px">
                  <asp:TextBox ID="colortxt" runat="server"></asp:TextBox>
              </td>
        </tr>
        <tr>
              <td>Clarity</td>
              <td>
                  <asp:TextBox ID="clartxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
              <td>
                    Odor 
              </td>
              <td>
                  <asp:TextBox ID="odtxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
              <td>
                   Specific gravity
              </td>
              <td> 
                  <asp:TextBox ID="sgtxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
             <td>
                 Glucose
             </td>
             <td>
                   <asp:TextBox ID="gltxt" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td>
                 Report Description
             </td>
             <td>
                   <asp:TextBox ID="rd2txt" runat="server"></asp:TextBox>
             </td>
         </tr>
         
    </table>
    </asp:Panel>
    <table style="z-index: 103; left: 213px; width: 184px; position: absolute; top: 555px">
    <tr><td>
        <asp:Button ID="Button2" runat="server" Text="Save" Width="81px" OnClick="Button2_Click" /></td>
    <td><asp:Button ID="Button3" runat="server" Text="Cancel" Width="81px" OnClick="Button3_Click" /></td></tr>
    </table>
</asp:Content>

