<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Permanence._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
     <br />
  
     
    
     
    
   
        
        <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h4 class="m-0 font-weight-bold text-primary" style="height: 21px">LISTE DES PERSONNES EN PERMANENCE:</h4>
                                </div>
                                <div class="card-body">
                                   <table class="w-100">
                                        <tr><td></td></tr>
         <tr>
             <td style="width: 105px"><asp:Button ID="Button2" runat="server" CssClass="btn btn-primary dropdown-toggle " Text="Recherche" OnClick="Button2_Click" /></td>
             
             <td style="width: 715px">&nbsp;</td>
            

                 <td style="width: 49px">
                     <asp:Label ID="Label2" runat="server" Text="Imprimer"></asp:Label></td>
                <td><asp:Button ID="Button4" runat="server" CssClass="btn btn-primary dropdown-toggle " style="margin-left:20px" Text="report" /></td>
                
            
         
       
     </table>
                                     
    <asp:GridView ID="GridView2" style="text-align:center" runat="server"  BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AllowCustomPaging="True">
                   <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                   <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                   <RowStyle ForeColor="#330099" BackColor="White" />
                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                   <SortedAscendingCellStyle BackColor="#FEFCEB" />
                   <SortedAscendingHeaderStyle BackColor="#AF0101" />
                   <SortedDescendingCellStyle BackColor="#F6F0C0" />
                   <SortedDescendingHeaderStyle BackColor="#7E0000" />
               </asp:GridView>                                </div>
                            </div>

    
    
     <br />
   
     
     <br />
     
     <br />
        <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h4 class="m-0 font-weight-bold text-primary" style="height: 19px">LISTE DES AGENTS :</h4>
                                </div>
                                <div class="card-body">
                                     <table class="w-100">
         <tr>
             <td style="width: 382px">&nbsp;</td>
             <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary dropdown-toggle " Text="Button" />
             <td></td>
             <td>&nbsp;</td>
         </tr>
     </table>
                                   
    <asp:GridView ID="GridView1"  style="text-align:center"  runat="server"  BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AllowCustomPaging="True">
                   <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                   <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                   <RowStyle ForeColor="#330099" BackColor="White" />
                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                   <SortedAscendingCellStyle BackColor="#FEFCEB" />
                   <SortedAscendingHeaderStyle BackColor="#AF0101" />
                   <SortedDescendingCellStyle BackColor="#F6F0C0" />
                   <SortedDescendingHeaderStyle BackColor="#7E0000" />
               </asp:GridView>                                </div>
                            </div>
    
    <br />
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
           <br />
        
         

</asp:Content>
