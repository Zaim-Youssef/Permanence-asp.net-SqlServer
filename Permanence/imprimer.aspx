<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="imprimer.aspx.cs" Inherits="Permanence.imprimer" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 164px">IMPRIMER</td>
            <td style="width: 195px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px; height: 29px;">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Type Permanence :" />
            </td>
            <td style="height: 29px; width: 195px;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="height: 29px"></td>
        </tr>
        <tr>
            <td style="width: 164px; height: 30px;">
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Division :" />
            </td>
            <td style="width: 195px; height: 30px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="height: 46px">
                 
                <asp:CheckBox ID="CheckBox3" Text ="Date" runat="server" />
                 
             </td>
            
            <td style="height: 46px; width: 195px;">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox></td>
           
        </tr>

         <tr>
             
            <td style="width: 164px">
                <asp:Button ID="Button4" CssClass="btn btn-success" runat="server" Text="envoyer" OnClick="Button4_Click" Width="98px" />
             </td>
            <td style="width: 195px">
                <asp:Button ID="Button3" CssClass="btn btn-success" runat="server" OnClick="Button3_Click" Text="Filtrer" />
             </td>
            <td><asp:Button ID="Button1" CssClass="btn btn-danger " Width="98px" Text="Retour" runat="server" OnClick="Button1_Click"  /></td>
             
        </tr>
    </table>
   <%-- <div>
        
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

       
    </div>--%>
    <div>
       <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>--%>
 <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="643px" Width="1658px"></rsweb:ReportViewer>
    </div>
</asp:Content>
