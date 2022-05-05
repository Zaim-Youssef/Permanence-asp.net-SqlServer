<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AjoutPermanenceAgent.aspx.cs" Inherits="Permanence.AjoutPermanenceAgent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   


           <br />
           <p class="lead">
               <br /><br />
               </p>
   
   <div class ="container-fluid">
              <div class="card shadow mb-4">
                  
                                <div class="card-header py-3">
                                     <p></p>
                                    <h2 class="m-0 font-weight-bold text-primary" >Ajouter Une Permanence a un Agent :</h2>
                                    <p></p>
                                </div>
                      

                                <div class="card-body">
                                   
                                    <table class="form-group">
                                         <tr>
                   <td style="width: 274px" ><h5   class="m-0 font-weight-bold text-primary" style ="margin-bottom: 19px";"margin-left: 19px"> Nom Prenom :</h5></td>
                   
                       </tr>

                        <tr><td  style="margin-left:auto;margin-right:auto; width: 274px;">
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-user"  Font-Size="Medium" ReadOnly="True" Width="261px"></asp:TextBox>
                       </td>
                       </tr>
             <tr>
                   <td style="width: 274px" ><h5   class="m-0 font-weight-bold text-primary" style ="margin-bottom: 19px";"margin-left: 19px"> Fonction :</h5></td>
                  
                       </tr>

                        <tr><td  style="margin-left:auto;margin-right:auto; width: 274px;">
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control form-control-user"  Font-Size="Medium" ReadOnly="True" Width="261px"></asp:TextBox>
                       </td>
                       </tr>
               
           </table>
                                  

         
           <table class="card-body p-0" style="width: 606px">
              <tr>
                  <td><asp:Label ID="Label4" runat="server" Text="date debut  :" ForeColor="#4E73DF" Font-Bold="True" Font-Size="10pt"></asp:Label> </td>
                  <td > <asp:Label ID="Label3" runat="server" Text="date fin :" ForeColor="#4E73DF" Font-Bold="True" Font-Size="10pt"></asp:Label> </td>
                 <td > <asp:Label ID="Label5" runat="server" Text="semaine   :" ForeColor="#4E73DF" Font-Bold="True" Font-Size="10pt"></asp:Label> </td>

              </tr>
               <tr><td>
                   <asp:TextBox ID="TextBox7" runat="server" TextMode="Date"></asp:TextBox>
                   <asp:DropDownList ID="DropDownList4" type="button" CssClass="btn btn-primary dropdown-toggle " Font-Size="Medium" runat="server" AutoPostBack="True" Width="150px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                       </asp:DropDownList>

                   </td><td style="width: 51px">
                       <asp:TextBox ID="TextBox8" runat="server" TextMode="Date"></asp:TextBox>
                       <asp:TextBox ID="TextBox6" CssClass="form-control form-control-user"  Font-Size="Medium" runat="server" ReadOnly="True" Width="140px" ></asp:TextBox>

                        </td>
                   <td>  <asp:DropDownList ID="DropDownList1" type="button" CssClass="btn btn-primary dropdown-toggle " Font-Size="Medium" runat="server" AutoPostBack="True" Width="120px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                       </asp:DropDownList>

                   </td></tr>
               <tr>
                   <td style="width: 274px" ><h5   class="m-0 font-weight-bold text-primary" style ="margin-bottom: 19px";"margin-left: 19px">Id Agent  :</h5></td>
                   
                       </tr>

                        <tr><td  style="margin-left:auto;margin-right:auto; width: 274px;">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-user"  Font-Size="Medium" ReadOnly="True" Width="261px"></asp:TextBox>
                       </td>
                       </tr>
              
              <tr>
                   <td style="width: 274px" ><h5   class="m-0 font-weight-bold text-primary" style ="margin-bottom: 19px";"margin-left: 19px">Division  :</h5></td>
                   
                       </tr>

                        <tr><td  style=" width: 274px;">
                            
 <asp:DropDownList ID="DropDownList2" type="button" CssClass="btn btn-primary dropdown-toggle " Font-Size="Medium" runat="server" AutoPostBack="True" Width="120px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                       </asp:DropDownList>
                       </td>
                       </tr>
                   
              
                   
                   
                   
               
               <tr>
                   <td style="width: 274px" ><h5   class="m-0 font-weight-bold text-primary" style ="margin-bottom: 19px";"margin-left: 19px">Id Permanence  :</h5></td>
                   
                       </tr>

                        <tr><td  style=" width: 274px;">
                            
<asp:TextBox ID="TextBox4" runat="server" class="form-control form-control-user"  Font-Size="Medium" ReadOnly="True" Width="261px"></asp:TextBox>
                       </td>
                       </tr>
               <tr>
                   <td style="width: 182px; height: 31px;"></td>
                   <td style="width: 51px; height: 31px;"></td>
               </tr>
               <tr>
                    
                   <td >

                       <asp:Button ID="Button4"  CssClass="btn btn-success "  class=" margin-left: 50px" runat="server" Text="Modifier" OnClick="Button4_Click" style="margin-left: 51px"  Height="40px" Width="90px" />

                       <asp:Button ID="Button5" CssClass="btn btn-primary " runat="server" Text="Ajouter" OnClick="Button5_Click"  Height="40px" Width="90px"/>
                  
                       <td style="width: 51px">

                       <asp:Button ID="Button6" CssClass="btn btn-danger " runat="server" Text="Annuler" OnClick="Button6_Click"  Height="40px" Width="90px" />
                   </td>
                   <td style="width: 68px">
                       &nbsp;</td>
                  
               </tr>
               
           </table>                                </div>
                            </div>
  
                  
     
  

            <p>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
           </p>
           <br />
           <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
           <br />
    <br />
    <br />
   
  </div>
    
</asp:Content>
