<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="imprimer.aspx.cs" Inherits="Permanence.imprimer" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 164px">IMPRIMER</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px; height: 29px;">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Type Permanence :" />
            </td>
            <td style="height: 29px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="height: 29px"></td>
        </tr>
        <tr>
            <td style="width: 164px">
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Division :" />
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                 
             </td><td>
                 
             </td>
        </tr>
         <tr>
             
            <td style="width: 164px">
                <asp:Button ID="Button4" CssClass="btn btn-success" runat="server" Text="envoyer" OnClick="Button4_Click" Width="98px" />
             </td>
            <td>
                <asp:Button ID="Button3" CssClass="btn btn-success" runat="server" OnClick="Button3_Click" Text="Imprimer" />
             </td>
            <td>&nbsp;</td>
        </tr>
    </table>
   <%-- <div>
        
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

       
    </div>--%>
    <div>
       <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>--%>
 <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="732px" Width="1247px"></rsweb:ReportViewer>
    </div>
</asp:Content>
