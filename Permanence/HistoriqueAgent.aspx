<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HistoriqueAgent.aspx.cs" Inherits="Permanence.HistoriqueAgent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
        
       
       
     <p><br ></p>
    <p></p>
    <div id="content-wrapper" class="d-flex flex-column">

    
         <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h4 class="m-0 font-weight-bold text-primary" style="height: 21px">LISTE HISTORIQUE D'AGENT:</h4>
                                </div>
                                <div class="card-body">
        
         <asp:GridView ID="GridView1"  runat="server" BackColor="White" Style="text-align:center" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
             <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
             <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
             <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
             <RowStyle ForeColor="#330099" BackColor="White" />
             <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
             <SortedAscendingCellStyle BackColor="#FEFCEB" />
             <SortedAscendingHeaderStyle BackColor="#AF0101" />
             <SortedDescendingCellStyle BackColor="#F6F0C0" />
             <SortedDescendingHeaderStyle BackColor="#7E0000" />
           </asp:GridView>

           <br />
           <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    <br />
                                    <table class="w-100">
                                        <tr>
                                            <td style="width: 225px">&nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button3"  CssClass="btn btn-danger "   Height="40px" Width="90px" runat="server" OnClick="Button3_Click" Text="Retour" style="margin-left: 735px" />
                                            </td>
                                        </tr>
                                    </table>
           <br />
   
    </div>
         </div>
        </div>
        
    
    
</asp:Content>
