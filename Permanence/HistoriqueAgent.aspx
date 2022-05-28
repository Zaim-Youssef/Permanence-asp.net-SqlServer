<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HistoriqueAgent.aspx.cs" Inherits="Permanence.HistoriqueAgent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
        
       
       
     <p><br ></p>
        <div class="card-header py-3" style="height: 88px" __designer:mapid="ba">
            <br __designer:mapid="bb" />
            <asp:Label ID="Label13" runat="server" Font-Size="25px" ForeColor="Black" style="height: 30px" Text="HISTORIQUE D'AGENTS :"></asp:Label>
            <br />
            </div>
    <p></p>
    <div id="content-wrapper" class="d-flex flex-column">

    
         <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                </div>
                                <div class="card-body">
        
         <asp:GridView ID="GridView1"  runat="server" Style="text-align:center"  CssClass="table table-hover  table-bordered table-responsive"  Font-Names="Arial" Font-Size="7.5pt"  CellPadding="4" ForeColor="#333333" GridLines="None">
             <AlternatingRowStyle BackColor="White" />
             <EditRowStyle BackColor="#7C6F57" />
             <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#E3EAEB" />
             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F8FAFA" />
             <SortedAscendingHeaderStyle BackColor="#246B61" />
             <SortedDescendingCellStyle BackColor="#D4DFE1" />
             <SortedDescendingHeaderStyle BackColor="#15524A" />
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
