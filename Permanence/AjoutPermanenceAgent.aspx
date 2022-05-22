<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AjoutPermanenceAgent.aspx.cs" Inherits="Permanence.AjoutPermanenceAgent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   


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
                       <asp:Label ID="Label22" runat="server" Text="Nom Prenom :" Font-Size="15px" ForeColor="Black" Font-Bold="True" ></asp:Label>
                   </td>
                   
                       </tr>

                        <tr><td  style="margin-left:auto;margin-right:auto; width: 274px;">
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-user"  Font-Size="Medium" ReadOnly="True" Width="261px"></asp:TextBox>
                       </td>
                       </tr>
             <tr>
                   <td style="width: 274px" ><asp:Label ID="Label1" runat="server" Text="Fonction :" Font-Size="15px" ForeColor="Black" Font-Bold="True" ></asp:Label>
                        </td>
                  
                       </tr>

                        <tr><td  style="margin-left:auto;margin-right:auto; width: 274px;">
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control form-control-user"  Font-Size="Medium" ReadOnly="True" Width="261px"></asp:TextBox>
                       </td>
                            
                       </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label11" runat="server"  Font-Size="15px" ForeColor="Black"   Font-Bold="True" Text="Reseau"></asp:Label>
                                            </td>
                                           
                                        </tr>
                                        <tr>
                                             <td>
                                                <asp:DropDownList ID="DropDownList9"   Font-Size="Medium" type="button"  AutoPostBack="True" CssClass="btn btn-primary  dropdown dropstart" width="180px" runat="server" style="left: 0px; top: -1px"></asp:DropDownList>
                                            </td>
                                        </tr>
                        <tr>

                            <td>
                                <asp:Label ID="Label23" runat="server"  Text="Type Permanence  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label>
                            

                        </tr>
                                        <tr>
                                            <td>
                                                <asp:DropDownList ID="DropDownList6" runat="server" CssClass="btn btn-primary  dropdown dropstart  " Font-Size="Medium" type="button"  AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" style=" width: 203px; height: 35px;">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td>
                                              <asp:Label ID="Label10" runat="server"  Text="Affectation  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>

                                                <asp:DropDownList ID="DropDownList3" CssClass="btn btn-primary  dropdown dropstart" runat="server" style="left: 0px; top: 0px; width: 274px; height: 35px"></asp:DropDownList>
                                            </td>

                                           
                                        </tr>
                                        <tr>
                                            <td style="height: 10px">
                                               <asp:Label ID="Label12" runat="server"  Text="Code Vehicule  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label>
                                            </td>
                                            <td><asp:Label ID="Label13" runat="server"  Text="Matricule Vehicule  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>

                                                <asp:TextBox  class="form-control form-control-user"  Font-Size="Medium" ID="TextBox9" runat="server" Width="173px"></asp:TextBox>

                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox5" class="form-control form-control-user"  Font-Size="Medium" runat="server" Width="219px"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label2" CssClass="btn btn-success" runat="server" Text="Du :" style="left: 0px; top: 1px; width: 180px"></asp:Label></td>
                                            <td><asp:Label ID="Label9" CssClass="btn btn-success" width="180px" runat="server" Text="Jusqu'a :"></asp:Label></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:DropDownList ID="DropDownList7"  Font-Size="Medium" type="button"  AutoPostBack="True" CssClass="btn btn-primary  dropdown dropstart" runat="server" style=" text-align:center;  left: 0px; top: 0px; width: 180px; height: 35px">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList8"  CssClass="btn btn-primary  dropdown dropstart"  Font-Size="Medium" type="button"  AutoPostBack="True" runat="server" style="text-align:center; left: 0px; top: 0px; width: 180px; height: 35px"></asp:DropDownList></td>

                                        </tr>
                                        <tr>
                                            <td><asp:Label ID="Label6" runat="server"  Text="niveau  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label> </td>
                                           
                                        </tr>
                                        <tr>
                                             <td>
                                                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="btn btn-primary  dropdown dropstart  " Font-Size="Medium" type="button"  AutoPostBack="True" Width="150px" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" style="left: 0px; top: 0px">
                                                </asp:DropDownList>
                                            </td>

                                        </tr>
               
           </table>
                                  

         
           <table class="card-body p-0" style="width: 606px">
              <tr>
                  <td style="height: 26px"><asp:Label ID="Label4" runat="server" Text="date debut  :"  CssClass="btn btn-success  dropdown dropstart" width="180px"  Font-Bold="True" Font-Size="15px" ForeColor="Black"></asp:Label> </td>
                  <td style="height: 26px" > <asp:Label ID="Label3" runat="server" Text="date fin :" CssClass="btn btn-success  dropdown dropstart" width="180px"  Font-Bold="True" Font-Size="15px" ForeColor="Black" style="left: 0px; top: 0px"></asp:Label> </td>
                 <td style="height: 26px" > <asp:Label ID="Label5" runat="server" Text="semaine   :" CssClass="btn btn-success  dropdown dropstart"  Font-Bold="True" Font-Size="15px" ForeColor="Black" style="left: 0px; top: 0px; width: 114px"></asp:Label> </td>

              </tr>
               <tr>
                   <td style="height: 34px" >
                   <asp:TextBox ID="TextBox7" runat="server" TextMode="Date"></asp:TextBox>
                   <asp:DropDownList ID="DropDownList4" type="button" CssClass="btn btn-primary dropdown-toggle  " Font-Size="Medium" runat="server" AutoPostBack="True" Width="241px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                       </asp:DropDownList>

                   </td>
                   <td style="height: 34px" >
                       <asp:TextBox ID="TextBox8" runat="server" TextMode="Date" CssClass="offset-sm-0"></asp:TextBox>
                       <asp:TextBox ID="TextBox6" CssClass="form-control form-control-user"  Font-Size="Medium" runat="server" ReadOnly="True" Width="179px" ></asp:TextBox>

                        </td>
                   <td style="height: 34px">  <asp:DropDownList ID="DropDownList1" type="button" CssClass="btn btn-primary dropdown-toggle " Font-Size="Medium" runat="server" AutoPostBack="True" Width="120px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                       </asp:DropDownList>

                   </td></tr>
               <tr>
                   <td style="width: 274px" ><asp:Label ID="Label20" runat="server"  Text="Id Agent  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label> </td>
                   
                       </tr>

                        <tr><td  style="margin-left:auto;margin-right:auto; width: 274px;">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-user"  Font-Size="Medium" ReadOnly="True" Width="261px"></asp:TextBox>
                       </td>
                       </tr>
              
              <tr>
                   <td style="width: 274px" ><asp:Label ID="Label7" runat="server" Text="Division :" Font-Size="15px" ForeColor="Black" Font-Bold="True" ></asp:Label></td>
                   
                       </tr>

                        <tr><td  style=" width: 274px;">
                            
 <asp:DropDownList ID="DropDownList2" type="button" CssClass="btn btn-primary dropdown-toggle " Font-Size="Medium" runat="server" AutoPostBack="True" Width="120px"  OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                       </asp:DropDownList>
                       </td>
                       </tr>
                   
              
                   
                   
                   
               
               <tr>
                   <td style="width: 274px" ><asp:Label ID="Label21" runat="server"  Text="Id Permanence  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label> </td>
                   
                       </tr>

                        <tr><td  style=" width: 274px;">
                            
<asp:TextBox ID="TextBox4" runat="server" class="form-control form-control-user"  Font-Size="Medium" ReadOnly="True" Width="261px"></asp:TextBox>
                       </td>
                       </tr>
               <tr>
                   <td style="width: 182px; height: 31px;"></td>
                   <td style="width: 51px; height: 31px;">
                       &nbsp;</td>
               </tr>
               <tr>
                    
                   <td >

                       <asp:Button ID="Button4"  CssClass="btn btn-success "  class=" margin-left: 50px" runat="server" Text="Modifier" OnClick="Button4_Click" style="margin-left: 51px"  Height="40px" Width="90px" />

                       <asp:Button ID="Button5" CssClass="btn btn-primary " runat="server" Text="Ajouter" OnClick="Button5_Click"  Height="40px" Width="90px"/>
                  
                       <td style="width: 51px">

                       <asp:Button ID="Button6" CssClass="btn btn-danger " runat="server" Text="Annuler" OnClick="Button6_Click"  Height="40px" Width="90px" />
                   </td>
                   <td style="width: 68px">
                       <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                       <br />
                   </td>
                  
               </tr>
               
           </table>                                </div>
                            </div>
  
                  
     
  

            <p>
                &nbsp;</p>
           <br />
           <br />
    <br />
    <br />
   
  </div>
    
</asp:Content>
