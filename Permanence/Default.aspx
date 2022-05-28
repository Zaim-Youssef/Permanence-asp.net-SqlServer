<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Permanence._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#">RADEEF</a>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-md-0">

                <li class="nav-item">

                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        OnClick="permanencestandard" ForeColor="Black"> Permanence Standard
                    </asp:LinkButton>
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

            </ul>
        </div>
    </nav>
    
   
                                           
       <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">

                <!-- Nested Row within Card Body -->
                <div class="row">

                    <table class="w-100">
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
                                <asp:TextBox ID="TextBox10" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                    </table>

                    </div>
                </div>
           </div>
    <br />

    <asp:Panel ID="Panel1" runat="server" Height="362px">
          <div class="card shadow mb-4">
        <div class="card-body">
            <table class="nav-justified">
                <tr>
                    <td style="width: 758px">
                        <table class="nav-justified" style="height: 258px; width: 751px">
                            <tr>
                                <td style="width: 107px; height: 24px;">
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="_Id Agent" OnCheckedChanged="CheckBox1_CheckedChanged" />
                                </td>
                                <td style="height: 24px; width: 292px;">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="col-md-offset-0"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 107px; height: 27px;">
                                    <asp:CheckBox ID="CheckBox2" runat="server" Text="_fonction" />
                                </td>
                                <td style="width: 292px; height: 27px;">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                           
                            <tr>
                                <td style="height: 24px; width: 107px;">
                                    <asp:CheckBox ID="CheckBox4" runat="server" Text="_nom" />
                                </td>
                                <td style="width: 292px; height: 24px">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 107px">
                                    <asp:CheckBox ID="CheckBox5" runat="server" Text="_prenom" />
                                </td>
                                <td style="width: 292px">
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 107px">
                                    <asp:CheckBox ID="CheckBox7" runat="server" Text="_nom entity" />
                                </td>
                                <td style="width: 292px">
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                          
                            <tr>
                                <td style="width: 107px">
                                    <asp:Button ID="Button1"   CssClass="btn btn-success "  runat="server"  OnClick="Button1_Click2" Text="Filtrer" />
                                    </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        </div>
        
          <div class="card-header py-3" style="height: 86px">
              <br />
              <asp:Label ID="Label12" runat="server" Font-Size="25px" ForeColor="Black" style="height: 30px" Text="LISTE DES AGENTS :"></asp:Label>
              <br />
          </div>
        
    </asp:Panel>
   

     <br />

     <br />
     
    
     
    <div class="card shadow mb-4">
        <div class="card-body">
              <table class="w-100">
         <tr>
             <td style="width: 160px">
                 <asp:Label ID="Label13" runat="server" ForeColor="Black" Text="Ajouter un Agent :"></asp:Label>
             </td>
             <td>
                                    <asp:Button ID="Button2" CssClass="btn btn-success " runat="server" Text="AJOUTER" OnClick="Button2_Click1" />
                                </td>
         </tr>
    
    </table>
            <p></p>

            <asp:GridView ID="GridView1" Style="text-align: center" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AllowCustomPaging="True" CssClass="table-active table-bordered table-hover table-responsive">
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
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />



</asp:Content>
