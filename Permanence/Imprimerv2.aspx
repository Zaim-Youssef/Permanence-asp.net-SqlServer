<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Imprimerv2.aspx.cs" Inherits="Permanence.Imprimerv2" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">IMPRIMER V2:</td>
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
                
            </tr>
            <tr><td>

                
                <asp:Label ID="Label5" runat="server" Text=" Debut :"></asp:Label>

                
            </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="178px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:CheckBox ID="CheckBox3" Text="Date" runat="server" />
                </td>
                
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Date Debut"></asp:Label>
                </td>
                
                <td><asp:Label ID="Label2" runat="server" Text="Date Fin"></asp:Label></td>
                <td><asp:Label ID="Label3" runat="server" Text="Semaine"></asp:Label></td>
            </tr>
             <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="17px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="191px">
                    </asp:DropDownList>
                 </td>
               
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="217px">
                    </asp:DropDownList>
                 </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="19px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="190px">
                    </asp:DropDownList>
                 </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Width="98px" Text="Envoyer" OnClick="Button1_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Width="98px" Text="Imprimer" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="643px" Width="1658px">
        </rsweb:ReportViewer>
    </form>
</body>
</html>
