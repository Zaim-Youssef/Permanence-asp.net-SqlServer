<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="recherche.aspx.cs" Inherits="Permanence.recherche" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
        
                                     
         <table class="nav-justified">
             <tr>
                 <td>
                     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                     <table class="nav-justified">
                         <tr>
                             <td style="width: 153px; height: 24px;">
                                 <asp:CheckBox ID="CheckBox1" runat="server" Text="Id Agent" />
                             </td>
                             <td style="height: 24px; width: 248px;">
                                 <asp:TextBox ID="TextBox1" runat="server" CssClass="col-md-offset-0"></asp:TextBox>
                             </td>
                             
                         </tr>
                         <tr>
                             <td style="width: 153px">
                                 <asp:CheckBox ID="CheckBox2" runat="server" Text="fonction" />
                             </td>
                             <td style="width: 248px">
                                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                             </td>
                            
                         </tr>
                         <tr>
                             <td style="width: 153px; height: 24px;">
                                 <asp:CheckBox ID="CheckBox3" runat="server" Text="semaine"/>
                             </td>
                             <td style="height: 24px; width: 248px;">
                                 <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
                             </td>
                             
                         </tr>
                         <tr>
                             <td style="height: 24px"><asp:CheckBox ID="CheckBox4" runat="server" Text="nom"/></td>
                             
                             <td style="width: 248px; height: 24px"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                             

                         </tr>

                         <tr>

                             <td><asp:CheckBox ID="CheckBox5" runat="server" Text="prenom" /></td>
                             
                             
                             <td style="width: 248px"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                         </tr>
                         <tr>
                             <td>
                                 <asp:CheckBox ID="CheckBox7" runat="server" Text="nom entity" /></td>
                             <td>
                                 <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>

                         </tr>
                         <tr>
                             <td style="height: 27px">
                                 <asp:CheckBox ID="CheckBox6" runat="server" Text="date" />
                             </td>
                             <td style="width: 248px; height: 27px">
                                 <asp:Label ID="Label2" runat="server" Text="date debut :"></asp:Label>
&nbsp;
                                 <asp:TextBox ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
                             </td>
                              <td style="width: 79px; height: 27px">
                                  <asp:Label ID="Label3" runat="server" Text="date fin :"></asp:Label>
                             </td>
                              <td style="height: 27px">
                                  <asp:TextBox ID="TextBox7" runat="server" TextMode="Date"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td style="width: 153px">
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click2" Text="Rechercher" />
                             </td>
                             <td style="width: 248px">&nbsp;</td>
                         </tr>
                     </table>
                 </td>
                                    
             </tr>
             <tr>
                 <td>
                     <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                         <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                         <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                         <RowStyle BackColor="White" ForeColor="#330099" />
                         <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                         <SortedAscendingCellStyle BackColor="#FEFCEB" />
                         <SortedAscendingHeaderStyle BackColor="#AF0101" />
                         <SortedDescendingCellStyle BackColor="#F6F0C0" />
                         <SortedDescendingHeaderStyle BackColor="#7E0000" />
                     </asp:GridView>
                 </td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
             </tr>
         </table>
  

   </div>
    
</asp:Content>
