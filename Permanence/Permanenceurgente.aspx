<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Permanenceurgente.aspx.cs" Inherits="Permanence.Permanenceurgente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#">RADEEF</a>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-md-0">

                <li class="nav-item">

                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="ag" ForeColor="Black"> Listes des Agents</asp:LinkButton>
                </li>
                <li class="nav-item">&nbsp;
                </li>
                <li class="nav-item">

                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="pst1" ForeColor="Black">Permanence Standard</asp:LinkButton>
                </li>
            </ul>
        </div>
    </nav>
    
     <div class="card-body">         
         <table class="nav-justified">
             <tr>
                 <td style="width: 806px">
                     <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                     <table class="nav-justified">
                         <tr>
                             <td style="width: 153px; height: 24px;">
                                 <asp:CheckBox ID="CheckBox1" runat="server"   Font-Bold="True" Font-Size="15px" Text="Id Agent" />
                             </td>
                             <td style="height: 24px; width: 305px;">
                                 <asp:TextBox ID="TextBox1" runat="server"  CssClass="col-md-offset-0"></asp:TextBox>
                             </td>
                             
                         </tr>
                       
                       
                         <tr>
                             <td style="height: 24px"><asp:CheckBox ID="CheckBox4"  Font-Bold="True" Font-Size="15px"  runat="server" Text="nom"/></td>
                             
                             <td style="width: 305px; height: 24px"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                             

                         </tr>

                         <tr>

                             <td><asp:CheckBox ID="CheckBox5" runat="server"  Font-Bold="True" Font-Size="15px" Text="prenom" /></td>
                             
                             
                             <td style="width: 305px"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                         </tr>
                         <tr>
                             <td>
                                 <asp:CheckBox ID="CheckBox2"   Font-Bold="True" Font-Size="15px" Text="type permanence :" runat="server" />
                             </td>
                             
                             <td>
                                 <asp:DropDownList ID="DropDownList1"  CssClass="btn btn-primary dropdown-toggle " runat="server" AutoPostBack="True" Height="35px" Width="188px"></asp:DropDownList>
                             </td>

                         </tr>
                         <tr>
                             <td style="height: 27px">
                                 <asp:CheckBox ID="CheckBox6" runat="server"   Font-Bold="True" Font-Size="15px" Text="date debut :" />
                             </td>
                             <td style="width: 305px; height: 27px">
                                 &nbsp;<asp:TextBox ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
                             </td>
                              <td style="width: 79px; height: 27px">
                                  &nbsp;</td>
                              <td style="height: 27px; width: 228px;">
                                  &nbsp;</td>
                         </tr>
                         <tr>
                             <td style="width: 153px">
                     <asp:Button ID="Button1" runat="server" CssClass="btn btn-success "  OnClick="Button1_Click2" Text="FILTRER" />
                             </td>
                             <td>
                                 <asp:Button ID="Button2" runat="server"  CssClass="btn btn-success " Text="IMPRIMER" OnClick="Button2_Click1" />
                             </td>
                             
                         </tr>
                     </table>
                    </table>
         </div>
    <p></p>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <p class="m-0 font-weight-bold text-primary" style="height: 58px">
            <asp:Label ID="Label12" runat="server" Font-Size="25px" ForeColor="Black" style="height: 30px" Text="LISTE DES PERSONNES EN PERMANENCE NIVEAU 2 , 3 :"></asp:Label>
            </p>
        </div>
        <div class="card-body">
           <div class="container">
                 <asp:GridView ID="GridView1" runat="server"  AllowSorting="True" Style="text-align: center"  CssClass="table  table-bordered table-hover table-responsive" CellPadding="4" Font-Names="Arial" Font-Size="8pt" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging1" OnSorting="GridView1_Sorting" PagerSettings-Mode="NumericFirstLast" ForeColor="#333333" GridLines="None">
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

    </div>

    </div>
        </div>

    </div>
</asp:Content>
