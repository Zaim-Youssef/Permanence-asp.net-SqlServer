<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="permanencestandard.aspx.cs" Inherits="Permanence.permanencestandard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
   
    <a class="navbar-brand" href="#">RADEEF</a>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-md-0">

                <li class="nav-item">

                   
                   
                </li>
                <li class="nav-item">&nbsp;
                </li>
                <li class="nav-item">

                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True"
                        Font-Size="9pt" OnClick="redirectpu"> Permanence Urgente
                    </asp:LinkButton>
                </li>

                <li class="nav-item">&nbsp;
                </li>

                <li class="nav-item">
                   
                   

                </li>
                                <li class="nav-item">
                                     <asp:LinkButton ID="LinkButton1"  Font-Bold="True"
                        Font-Size="9pt" OnClick="dft" runat="server">AGENT BTN</asp:LinkButton>
                                    </li>
            </ul>
        </div>
    </nav>
    <br />

     <br />
     <table class="w-100">
        <tr>
            <td style="width: 150px; height: 32px;">
                <asp:Label ID="Label2" runat="server" Text="tableau de bord :"></asp:Label>
            </td>
            <td style="width: 188px; height: 32px;">
                &nbsp;</td>
            <td style="height: 32px"></td>
        </tr>
    </table>
     <br />
     <div class="card-body">         
         <table class="nav-justified">
             <tr>
                 <td style="width: 806px">
                     <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                     <table class="nav-justified">
                         <tr>
                             <td style="width: 153px; height: 24px;">
                                 <asp:CheckBox ID="CheckBox1" runat="server" Text="Id Agent" />
                             </td>
                             <td style="height: 24px; width: 305px;">
                                 <asp:TextBox ID="TextBox1" runat="server" CssClass="col-md-offset-0"></asp:TextBox>
                             </td>
                             
                         </tr>
                       
                         <tr>
                             <td style="width: 153px; height: 24px;">
                                 <asp:CheckBox ID="CheckBox3" runat="server" Text="semaine"/>
                             </td>
                             <td style="height: 24px; width: 305px;">
                                 <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
                             </td>
                             
                         </tr>
                         <tr>
                             <td>
                                 <asp:CheckBox ID="CheckBox2" runat="server" Text="type permanence :" />
                             </td>
                             <td>
                                 
                                 <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-primary dropdown-toggle " AutoPostBack="True" Height="35px" Width="184px">
                                 </asp:DropDownList>
                             </td>
                         </tr>
                         <tr>
                             <td style="height: 24px"><asp:CheckBox ID="CheckBox4" runat="server" Text="nom"/></td>
                             
                             <td style="width: 305px; height: 24px"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                             

                         </tr>

                         <tr>

                             <td><asp:CheckBox ID="CheckBox5" runat="server" Text="prenom" /></td>
                             
                             
                             <td style="width: 305px"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                         </tr>

                         <tr>
                             <td style="height: 27px">
                                 <asp:CheckBox ID="CheckBox6" runat="server" Text="date" />
                             </td>
                             <td style="width: 305px; height: 27px">
                                 <asp:Label ID="Label4" runat="server" Text="date debut :"></asp:Label>
&nbsp;
                                 <asp:TextBox ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
                             </td>
                              <td style="width: 79px; height: 27px">
                                  <asp:Label ID="Label5" runat="server" Text="date fin :"></asp:Label>
                             </td>
                              <td style="height: 27px; width: 228px;">
                                  <asp:TextBox ID="TextBox7" runat="server" TextMode="Date"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td style="width: 153px">
                     <asp:Button ID="Button2" runat="server" CssClass="btn btn-success "  OnClick="Button1_Click2" Text="FILTRER" />
                             </td>
                             <td>
                                 <asp:Button ID="Button1"  CssClass="btn btn-success" runat="server" Text="Imprimer" OnClick="Button1_Click" /></td>
                         </tr>
                     </table>
                    </table>
         </div>
    
                 
    <br />
       <div id="content-wrapper" class="d-flex flex-column">

    
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h4 class="m-0 font-weight-bold text-primary" style="height: 62px">LISTE DES PERSONNES EN PERMANENCE Standard:</h4>
        </div>
        <div class="card-body">
            <table class="w-100">
                <tr>
                    <td>
                        
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 105px">
                        &nbsp;</td>
                    <td style="width: 715px">&nbsp;</td>
                    <td style="width: 49px">&nbsp;</td>
                    <td></td>
                </tr>
            </table>
             
            </div>
        <div class="container">
                 <asp:GridView ID="GridView1" runat="server"  AllowSorting="True" Style="text-align: center"  CssClass="table  table-bordered table-hover table-responsive" CellPadding="4" Font-Names="Arial" Font-Size="7.5pt" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging1" OnSorting="GridView1_Sorting" PagerSettings-Mode="NumericFirstLast" ForeColor="#333333" GridLines="None">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <EditRowStyle BackColor="#999999" />
                     <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                     <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" /> 
                     <SortedAscendingCellStyle BackColor="#E9E7E2" />
                     <SortedAscendingHeaderStyle BackColor="#506C8C" />
                     <SortedDescendingCellStyle BackColor="#FFFDF8" />
                     <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                 </asp:GridView>

    </div>
        
    </div>
           </div>
  
</asp:Content>
