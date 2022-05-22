<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="Permanence.inscription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent"  runat="server">
       <div runat="server" ID="divMain">


  

   
           <br />
           <p class="lead">
               <br /><br />
               </p>
   
   <div class ="container-fluid">
              <div class="card shadow mb-4">
                  
                                <div class="card-header py-3">
                                     <p>
                                         <asp:Label ID="lb2" runat="server" Text="lbl2"></asp:Label>
                                     </p>
                                    <h2 class="m-0 font-weight-bold text-primary" >Ajouter Une Permanence a un Agent :</h2>
                                    <p></p>
                                </div>
                      

                                <div class="card-body">
                                   
                                    <table class="form-group">
                                         <tr>
                   <td style="width: 274px" >
                       <asp:Label ID="Label22" runat="server" Text="Prenom :" Font-Size="15px" ForeColor="Black" Font-Bold="True" ></asp:Label>
                   </td>
                   
                       </tr>

                        <tr><td  style="margin-left:auto;margin-right:auto; width: 274px;">
                            &nbsp;</td>
                       </tr>
             <tr>
                   <td style="width: 274px" ><asp:Label ID="Label1" runat="server" Text="Nom  :" Font-Size="15px" ForeColor="Black" Font-Bold="True" ></asp:Label>
                        </td>
                  
                       </tr>

                        <tr><td  style="margin-left:auto;margin-right:auto; width: 274px;">
                            &nbsp;</td>
                            
                       </tr>
                        <tr>

                            <td>
                                <asp:Label ID="Label23" runat="server"  Text="Type Permanence  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label>
                            

                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        
                                        <tr>
                                            <td>
                                              <asp:Label ID="Label10" runat="server"  Text="Affectation  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>

                                                &nbsp;</td>


                                        </tr>

                                        <tr>
                                            <td><asp:Label ID="Label6" runat="server"  Text="niveau  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label> </td>
                                           
                                        </tr>
                                        <tr>
                                             <td>
                                                 &nbsp;</td>

                                        </tr>
               
           </table>
                                  

         
           <table class="card-body p-0" style="width: 606px">
              <tr>
                  <td style="height: 26px"><asp:Label ID="Label4" runat="server" Text="date debut  :"  Font-Bold="True" Font-Size="15px" ForeColor="Black"></asp:Label> </td>
                  <td style="height: 26px" > <asp:Label ID="Label3" runat="server" Text="date fin :"  Font-Bold="True" Font-Size="15px" ForeColor="Black"></asp:Label> </td>
                 <td style="height: 26px" > &nbsp;</td>

              </tr>
               <tr style="height: 35px">
                   <td >
                       &nbsp;</td>
                   <td >
                       &nbsp;</td>
                   <td>  &nbsp;</td></tr>
               <tr>
                   <td style="width: 274px" ><asp:Label ID="Label20" runat="server"  Text="Id Agent  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label> </td>
                   
                       </tr>

                        <tr><td  style="margin-left:auto;margin-right:auto; width: 274px;">
                            &nbsp;</td>
                       </tr>
              
              <tr>
                   <td style="width: 274px" ><asp:Label ID="Label7" runat="server" Text="Division :" Font-Size="15px" ForeColor="Black" Font-Bold="True" ></asp:Label></td>
                   
                       </tr>

                        <tr><td  style=" width: 274px;">
                            
                            &nbsp;</td>
                       </tr>
                   
              
                   
                   
                   
               
               <tr>
                   <td style="width: 274px" ><asp:Label ID="Label21" runat="server"  Text="Id Permanence  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label> </td>
                   
                       </tr>

                        <tr><td  style=" width: 274px;">
                            
                            &nbsp;</td>
                       </tr>
               <tr>
                   <td style="width: 182px; height: 31px;"></td>
                   <td style="width: 51px; height: 31px;">
                       &nbsp;</td>
               </tr>
               <tr>
                    
                   <td >

                       &nbsp;<td style="width: 51px">

                       &nbsp;</td>
                   <td style="width: 68px">
                       <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                       <br />
                   </td>
                  
               </tr>
               
           </table>                                </div>
                            </div>
  
                  
     
  

            <p>
                &nbsp;</p>
   
  </div>
    

  

   
    </div>
</asp:Content>
