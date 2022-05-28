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

                    <asp:LinkButton ID="LinkButton2" runat="server" 
                       OnClick="redirectpu" ForeColor="Black"> Permanence Urgente
                    </asp:LinkButton>
                </li>

                <li class="nav-item">&nbsp;
                </li>

                <li class="nav-item">
                   
                   

                </li>
                                <li class="nav-item">
                                     <asp:LinkButton ID="LinkButton1" 
                        OnClick="dft" runat="server" ForeColor="Black">Liste des Agents</asp:LinkButton>
                                    </li>
            </ul>
        </div>
    </nav>

     <br />
     <div class="card-body">         
         <table class="nav-justified">
             <tr>
                 <td style="width: 806px">
                     <asp:Label ID="Label3" runat="server"></asp:Label>
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
            <p class="m-0 font-weight-bold text-primary" style="height: 62px">
            <asp:Label ID="Label12" runat="server" Font-Size="25px" ForeColor="Black" style="height: 30px" Text="LISTE DES PERSONNES EN PERMANENCE NIVEAU 1 :"></asp:Label>
            </p>
        </div>
        
        <div class="container">
                 <asp:GridView ID="GridView1" runat="server"  AllowSorting="True" Style="text-align: center"  CssClass="table  table-bordered table-hover table-responsive" CellPadding="4" Font-Names="Arial"  Font-Size="8pt" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging1" OnSorting="GridView1_Sorting" PagerSettings-Mode="NumericFirstLast" ForeColor="#333333" GridLines="None">
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
  <p>

                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    

</asp:Content>
