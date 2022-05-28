<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Imprimerv2.aspx.cs" Inherits="Permanence.Imprimerv2" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 197px;
        }
        .auto-style3 {
            width: 223px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        
          <div class="card shadow mb-4">
        <div class="card-header py-3">
        <div class="card-header py-3" style="height: 86px">
            <br />
            <asp:Label ID="Label12" runat="server" Font-Size="25px" ForeColor="Black" style="height: 30px" Text="IMPRIMER :"></asp:Label>
            <br />
            </div>
            <p></p>
        </div>
        
        <div class="card-body">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Type Permanence :" />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="218px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Division :" />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="218px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox4" Text="Horaire" runat="server" />

                </td>
                <td>                    <asp:TextBox ID="TextBox3" runat="server" Width="178px"></asp:TextBox>
                </td>
                
            </tr>
           
            <tr>
                <td class="auto-style2">
                    <asp:CheckBox ID="CheckBox3" Text="Date" runat="server" />
                </td>
                
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                
            </tr>
            <tr style="width:auto">
                <td >
                    <asp:Label ID="Label1" runat="server" Text="Date Debut"></asp:Label>
                </td>
                
                <td><asp:Label ID="Label3" runat="server" Text="Semaine"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
             
               
               
            <tr>
                <td >
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="btn btn-primary  " Font-Size="Medium"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="191px">
                    </asp:DropDownList>
                 </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server"  CssClass="btn btn-primary  " AutoPostBack="True"  OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="191px">
                    </asp:DropDownList>
                 </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>   
                <td></td>
                <td></td>
            </tr> 
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Width="98px" Text="Envoyer" OnClick="Button1_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Width="98px" Text="Imprimer" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    <asp:Button ID="Button4" runat="server" CssClass="btn btn-danger " Width="98px" Text="Retour" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
    </div>
            </div>
              
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="1165px" Width="1658px">
        </rsweb:ReportViewer>
    </form>
</body>
</html>
