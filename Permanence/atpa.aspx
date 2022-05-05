<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="atpa.aspx.cs" Inherits="Permanence.atpa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
     <br />

    <div class="container ">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">

                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="user">
                                <div class="form-group row">
                                    <div class="text-primary">
                                    <h1 class="h3 mb-0 text-gray-800">Dashboard :</h1></div>
                                    <p></p>
                                        <hr>
                                    <table class="nav-justified">
                                        <tr>
                                            <td>
                                                <table class="nav-justified">
                                                    <tr>
                                                        <td style="width: 146px">
                                                            <asp:Label ID="Label2" runat="server" Text="IdPersonnel :"></asp:Label>
                                                        &nbsp;&nbsp; &nbsp;    
                                                        </td>
                                                        <td>
         <div class="col-sm-6 mb-3 mb-sm-0" style="left: 4px; top: 0px; ">

                                        <asp:TextBox ID="TextBox1"  class="form-control form-control-user" runat="server" Width="85px" ReadOnly="True" ></asp:TextBox>

                       </div>
                      
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                               <table class="nav-justified">
                                                    <tr>
                                                        <td style="width: 132px">
                                                            <asp:Label ID="Label3" runat="server" Text="Prenom Nom :"></asp:Label>
                                                        </td>
                                                        <td>
         <div class="col-sm-6 mb-3 mb-sm-0" style="left: 29px; top: 0px; width: 66%">

                                        <asp:TextBox ID="TextBox2"  class="form-control form-control-user" runat="server" Width="451px" ReadOnly="True" ></asp:TextBox>

                       </div>
                      
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                                                    </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    


    <div id="content-wrapper" class="d-flex flex-column">

     <div class="card-header py-3">
                                     <p>
                                         <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                     </p>
                            
                                    <p></p>
                                <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                     
                                    <h4 class="m-0 font-weight-bold text-primary" style="height: 21px">LISTE DES PERMANENECE DE L'AGENT :</h4>
                                </div>
                                <div class="card-body">
                                   
                               
     <br />
     
     <br />
         <asp:GridView ID="GridView1" class="table " runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
                                    </div>
                                    </div>

         <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                       <h4 class="m-0 font-weight-bold text-primary" style="height: 21px">LISTE DES TACHES DE L'AGENT :</h4>
                                    
                                </div>
                                <div class="card-body">

                                  
         <asp:GridView ID="GridView2" class="table " runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
</div>
             </div>
           <br />
           <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                     <br />
           <br />
   
    </div>
         </div>
</asp:Content>
