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
        <div class="card-header py-3" style="height: 86px">
            <br />
            <asp:Label ID="Label12" runat="server" Font-Size="25px" ForeColor="Black" style="height: 30px" Text="Ajouter Un Agent :"></asp:Label>
            <br />
            </div>
                                    <h2 class="m-0 font-weight-bold text-primary" >&nbsp;</h2>
                                </div>
                      

                                <div class="card-body">
                                   
                                    <table class="form-group">
                                         <tr>
                   <td style="width: 274px" >
                       <asp:Label ID="Label22" runat="server" Text="Prenom :" Font-Size="15px" ForeColor="Black" Font-Bold="True" ></asp:Label>
                   </td>
                                             <td style="width: 274px" ><asp:Label ID="Label1" runat="server" Text="Nom  :" Font-Size="15px" ForeColor="Black" Font-Bold="True" ></asp:Label>
                        </td>
                   
                       </tr>

                        <tr><td  style="margin-left:auto;margin-right:auto; width: 274px;">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>--%>
                            </td>
                            <td  style="margin-left:auto;margin-right:auto; width: 274px;">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>--%>
                            </td>
                       </tr>

                        <tr>

                            <td>
                                <asp:Label ID="Label23" runat="server"  Text="fonction  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label>
                            </td>
                            <td>
                                              <asp:Label ID="Label10" runat="server"  Text="Division :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label>
                                            </td>

                        </tr>
                                        <tr>
                                            <td>
                                                <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="173px">
                                                </asp:DropDownList>
                                            </td>
                                            <td>

                                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="24px" Width="160px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td><asp:Label ID="Label6" runat="server"  Text="chef  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label> </td>
                                           
                                        </tr>
                                        <tr>
                                             <td>
                                                 <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Width="167px">
                                                 </asp:DropDownList>
                                             </td>

                                        </tr>
               
           </table>
                                  

         
           <table class="card-body p-0" style="width: 606px">
              <tr>
                  <td style="height: 26px; width: 179px;"><asp:Label ID="Label4" runat="server" Text="email"  Font-Bold="True" Font-Size="15px" ForeColor="Black"></asp:Label> </td>
                  <td style="height: 26px" > &nbsp;</td>
                 <td style="height: 26px" > 
                     
                  </td>

              </tr>
               <tr style="height: 35px">
                   
                   <td >
                       <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                   </td>
                   <td>  
                       <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>--%>
                   </td></tr>
               <tr>
                   <td style="width: 179px" ><asp:Label ID="Label20" runat="server"  Text="adresse  :" Font-Size="15px" ForeColor="Black"   Font-Bold="True" ></asp:Label> </td>
                   
                       </tr>

                        <tr><td  style="margin-left:auto;margin-right:auto; width: 179px;">
                            <asp:TextBox ID="TextBox5" runat="server" Height="101px" TextMode="MultiLine" Width="208px"></asp:TextBox>
                            </td>
                       </tr>
              
             

                   
              
                   
                   
                   
               
               <tr>
                   <td style="width: 179px" >&nbsp;</td>
                   
                       </tr>

                        
               <tr>
                   <td style="height: 31px; width: 179px;">
                       <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary " Text="Ajouter" OnClick="Button3_Click" />
                   </td>
                   <td style="width: 182px; height: 31px;">
                       <asp:Button ID="Button4" runat="server" CssClass="btn btn-danger " Text="Retour" OnClick="Button4_Click" />
                   </td>
                   <td style="width: 51px; height: 31px;">
                   </td>
               </tr>
               <tr>
                    
                   <td style="width: 179px" >

                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">veuillez saisir un email valide</asp:RegularExpressionValidator>
                       <br />
                       
                       <br />
                       <br />
                   <td style="width: 51px">

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
