<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="connexionpage.aspx.cs" Inherits="Permanence.connexionpage" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 198px;
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
           
             <asp:TextBox runat="server" CssClass="txtpass" placeholder="********" MouseLeave ="leave" TextMode="Password" ID="txtpw"/>
            <div class="card mb-4 py-3 border-bottom-primary">
                <div class="card-body">
                    <asp:Label ID="Label2" runat="server"  ForeColor="White" Text=""></asp:Label>
                    </div>
                </div>
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style2">
                         
                             <asp:RadioButton ID="RadioButton1" runat="server" Text=" admin" ForeColor="white" GroupName="1" OnCheckedChanged="RadioButton1_CheckedChanged" /></td>
                           <td class="auto-style2">  <asp:RadioButton ID="RadioButton2" runat="server" Text="agent" ForeColor="White" GroupName="1" OnCheckedChanged="RadioButton2_CheckedChanged" /></td>
                         
                     
                 </tr>
            </table>

            <div class="card mb-4 py-3 border-bottom-primary">
                <div class="card-body">
             -
                    </div>
                </div>
            <div class="card mb-4 py-3 border-bottom-primary">
                <div class="card-body">
                      <asp:Button Text="Sign In" CssClass="btnsubmit " runat="server" OnClick="Unnamed5_Click" />
                    </div>
                </div>

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </form>
    </div>
   
</body>
</html>
