<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="connexionpage.aspx.cs" Inherits="Permanence.connexionpage" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            font-size: 16px;
            color: #fff;
            cursor: pointer;
            border-radius: 20px;
            transition: .3s ease-in-out;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-bottom: 20px;
            background-color: #756cef;
        }
    </style>
    </head>
<body>
  
    <div class ="loginbox">
    <img src="Content/certauth.png" alt="Alternate Text"  class="user"/>
        <h2>login here</h2>
        <form runat ="server">
            <asp:Label Text="Email" CssClass="lblemail" runat="server" />
            <asp:TextBox runat="server" CssClass="txtemail"  placeholder="entrer login" ID="txtlogin"/>
            <asp:Label Text="Password" CssClass="lblpass" runat="server" />
           
             <asp:TextBox runat="server" CssClass="txtpass" placeholder="********"  TextMode="Password" ID="txtpw"/>
            <div class="card mb-4 py-3 border-bottom-primary">
                <div class="card-body">
                    <asp:Label ID="Label2" runat="server"  ForeColor="White" Text=""></asp:Label>
                      <asp:Button ID="btnlogin1" CssClass="btnsubmit "  runat="server" Text="Log In" OnClick="Button1_Click" />
                    </div>
                </div>
             <table >
                 <tr>
                     <td Width="175px" >
                         
                           
                             <asp:Button ID="button1" runat="server" Text="Admin"  CssClass="btnsubmit"  OnClick="Button1_Click1" Height="55px" Width="100px"  />
                     </td>
                           <td >  <asp:Button ID="button2" runat="server" Text="Agent"  CssClass="btnsubmit"  OnClick="Button2_Click" Height="55px" Width="100px"  /> 
                             
                              
                     </td>
                         
                     
                 </tr>
            </table>

            <div class="card mb-4 py-3 border-bottom-primary">
                <div class="card-body">
             -
                    </div>
                </div>
            <div class="card mb-4 py-3 border-bottom-primary">
                <div class="card-body">
                    </div>
                </div>

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <br />
           
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtlogin" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  Font-Size="9pt" Font-Underline="False" ForeColor="White" SetFocusOnError="True"> veuillez saisir un email valide</asp:RegularExpressionValidator>
           
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpw" ErrorMessage="RequiredFieldValidator" Font-Size="9pt" Font-Underline="False" ForeColor="White" SetFocusOnError="True">veuillez saisir un pw </asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate = "txtlogin" ErrorMessage="RequiredFieldValidator"  Font-Size="9pt" Font-Underline="False" ForeColor="White">veuillez saisir email</asp:RequiredFieldValidator>
            <br />
            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" SetFocusOnError="True"> avoir</asp:RegularExpressionValidator>--%>
        </form>
    </div>
   
    
   
</body>
</html>
