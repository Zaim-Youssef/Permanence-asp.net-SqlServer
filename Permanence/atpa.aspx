<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="atpa.aspx.cs" Inherits="Permanence.atpa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
     <br />

    <div class="container ">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">

                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="text-primary">
                                    <h1 class="h3 mb-0 text-gray-800" style="margin-left: 40px">Dashboard :</h1></div>
                      <p></p>
                    <hr>
       
                    </div>
                <!-- Nested Row within Card Body -->
                <div class="row">

                    <table class="w-100" style="height: 75px">
                        <tr><td></td></tr>
                        <tr>
                            <td style="width: 26px"> &nbsp;</td>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="code:"></asp:Label>
                            </td>
                            <td style="width: 209px">
                                <asp:TextBox ID="TextBox9" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="width: 131px">
                                <asp:Label ID="Label10" runat="server" Text="Prenom Nom :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server" ReadOnly="True" Width="325px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>

                    
               
           
                </div>
            </div>
        </div>
        </div>
    
    
    


    <div id="content-wrapper" class="d-flex flex-column">

     <div class="card-header py-3">
                                     <p>
                                         <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                         <asp:Label ID="Label5" runat="server"></asp:Label>
                                         <asp:Label ID="Label6" runat="server"></asp:Label>
                                     </p>
                            
                                    <p></p>
                                <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                     
                                    <h4 class="m-0 font-weight-bold text-primary" style="height: 21px">LISTE DES PERMANENECE DE L'AGENT :</h4>
                                    <br />
                                    <asp:GridView ID="GridView1" CssClass="table-active table-bordered table-hover table-responsive" runat="server"  Font-Size="8pt"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                </div>
                                    </div>

         <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                       <h4 class="m-0 font-weight-bold text-primary" style="height: 21px">LISTE DES TACHES DE L'AGENT :</h4>
                                    
                                </div>
                                <div class="card-body">

                                  
         <asp:GridView ID="GridView2" CssClass="table-active table-bordered table-hover table-responsive" Font-Size="8pt" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#242121" />
           </asp:GridView>
</div>
             </div>
           <br />
           <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                     <br />
           <br />
   
    </div>
         </div>
</asp:Content>
