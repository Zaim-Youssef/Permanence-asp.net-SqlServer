<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ajoutertacheagent.aspx.cs" Inherits="Permanence.Ajoutertacheagent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    

           <br />
           <p class="lead">
               <br /><br />
               </p>
   
   <div class ="container-fluid">
              <div class="card shadow mb-4">
                  
                                <div class="card-header py-3">
                                     <p></p>
                    <div class="col-lg-7" style="left: 0px; top: 0px; height: 95px">
                        <div class="p-5">
                            <div class="user">
                                <div class="form-group row">
                                    <div class="text-primary">
                                        <asp:Label ID="Label8" Font-Size="25px" ForeColor="Black"   style="height: 30px" runat="server"  Text="AJOUTER UNE TACHE :" Font-Bold="True"></asp:Label>
                                   </div>
                                    
                                   
                                </div>
                            </div>
                                                    </div>
                    </div>
                                        
                                </div>
                      <p></p>
                  
                       <table class="form-group">
                                        <tr>
                                            <td>
                                                <table class="nav-justified">
                                                    <tr >
                                                        <td> --> </td>
                                                        <td style="width:175px">
                                                            <asp:Label ID="Label4"   runat="server" Text="IdPermanence : " Font-Bold="True" Font-Size="15px" ForeColor="Black"></asp:Label>
                                                        </td>
                                                        <td>
         

                                        <asp:TextBox ID="TextBox1"  class="form-control form-control-user" runat="server" Width="58px" ReadOnly="True" ></asp:TextBox>

                      
                      
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                               <table class="nav-justified">
                                                    <tr>
                                                        <td >
                                                            <asp:Label ID="Label3" Font-Bold="True" Font-Size="15px" ForeColor="Black" runat="server" Text="Prenom Nom :"></asp:Label>
                                                        </td>
                                                        <td>
        

                                        <asp:TextBox ID="TextBox15"  class="form-control form-control-user" runat="server" Width="350px" ReadOnly="True" ></asp:TextBox>

                      
                      
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                  
                                        
                   <p></p>
                                <div class="card-body">
                                   
         
           <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    
                                    <asp:Label ID="Label7" Font-Size="25px" ForeColor="Black"   style="height: 30px" runat="server" Text="remplissage des données de  permanence :"></asp:Label>
                                </div>
                                <div class="card-body">


<table class="card-body p-0">
    <tr>
        <td style="width: 274px" >
             <asp:Label ID="Label9"   runat="server" Text="Date Permanence : " Font-Bold="True" Font-Size="15px" ForeColor="Black"></asp:Label>
            </td>
                  
                       </tr>

                        <tr><td  style="margin-left:auto;margin-right:auto; width: 274px;">
                            <asp:TextBox ID="TextBox9" runat="server" class="form-control form-control-user; margin-right: 21px" style="margin-right: 21px" Font-Size="Medium" ReadOnly="True" Width="279px"></asp:TextBox>
                       </td>
                       </tr>
                  

               
               <tr>
                   <td style="width: 274px">
                        <asp:Label ID="Label10"   runat="server" Text="Entity : " Font-Bold="True" Font-Size="15px" ForeColor="Black"></asp:Label>

                   </td>
                   <td style="width: 244px"></td>
               </tr>
               <tr >
                   <td style= "align-content :center; clip: rect(auto, auto, auto, auto); top: auto; width: 274px;" >
                            <asp:TextBox ID="TextBox10" runat="server" class="form-control form-control-user" Font-Size="Medium" ReadOnly="True" Width="261px"></asp:TextBox>
                             </td>
                   <td style="width: 244px">
                        &nbsp;</td>
                   
                   
                   
               </tr>
               <tr>
                   <td style="width: 274px">
                        &nbsp;</td>
                   <td style="width: 244px">
                       </tr>
               <tr><td style="width: 274px">
                   &nbsp;</td>
               </tr>
                <tr>
                   <td style="width: 274px">
                       <asp:Label ID="Label12"   runat="server" Text="Intervention :  " Font-Bold="True" Font-Size="15px" ForeColor="Black"></asp:Label>
                   </td>
                   </tr>
               <tr><td style="width: 274px">
                     <asp:DropDownList ID="DropDownList1" type="button" CssClass="btn btn-primary dropdown-toggle " Font-Size="Medium" runat="server" AutoPostBack="True" Width="261px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                       </asp:DropDownList>
                   </td>
                   </tr>

            <tr>
                   <td style="width: 274px">
                       <asp:Label ID="Label13"   runat="server" Text="Nom tache :  " Font-Bold="True" Font-Size="15px" ForeColor="Black"></asp:Label>
                       
                   <tr>
                       <td style="width: 274px">
                           <asp:TextBox ID="TextBox16"  class="form-control form-control-user" Font-Size="Medium" runat="server" Width="255px"></asp:TextBox>
                           
                       </td>
                   </tr>
               <tr>
                   <td style="width: 274px">
                        <asp:Label ID="Label14"   runat="server" Text="type tache : " Font-Bold="True" Font-Size="15px" ForeColor="Black"></asp:Label>
                       </td>
                   </tr>
                  <tr>
                      <td style="width: 274px"> <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control form-control-user"  Font-Size="Medium" Width="258px"></asp:TextBox></td>
               </tr>
               <tr>
                   <td style="width: 274px; height: 31px;">
                       
                       <asp:Label ID="Label15"   runat="server" Text="Description : " Font-Bold="True" Font-Size="15px" ForeColor="Black"></asp:Label>
                   </td>
                   </tr>
               <tr>
                   <td style="width: 274px; height: 31px;">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control form-control-user"  Font-Size="Medium" Width="277px" Height="151px" TextMode="MultiLine"></asp:TextBox>
                        
                   </td>
               </tr>

               <tr>
                    <td ></td>
                   </tr>
               
             
               
           </table>  
       </div>
                            </div>
                             </div>


                  <div class="card-body">
                      <table>
                                    <tr>
                   

                   <td style="width: 282px">
                       <asp:Button ID="Button4" CssClass="btn btn-success " runat="server" Text="Modifier" OnClick="Button4_Click" Height="40px" style="margin-left: 31px" Width="90px" /> 
                             <asp:Button ID="Button5" CssClass="btn btn-primary " runat="server" Text="Ajouter" OnClick="Button5_Click" Height="40px" Width="90px" />
                                        </td>
                       <td>
                             &nbsp;</td>
                     

                  
                   <td >
                       <asp:Button ID="Button6" CssClass="btn btn-danger " runat="server" Text="Annuler" OnClick="Button6_Click" Height="40px" Width="90px" />
                   </td>
                   

               </tr></table>
                                </div>
                            </div>
  
                  
     
  

            <p>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
           </p>
              <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
              <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
           <br />
           <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
              <br />
              <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
           <br />
              <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
              <br />
    <br />
              <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
    <br />
   
  </div>
    

</asp:Content>
