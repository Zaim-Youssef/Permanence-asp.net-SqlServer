<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smtp2.aspx.cs" Inherits="Permanence.smtp2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">

        .auto-style1 {

            width: 41%;

        }

        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            width: 109px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             
        
          <div class="card shadow mb-4">
        <div class="card-header py-3">
            <p></p>
        <div class="card-header py-3" style="height: 86px">
            <br />
            <asp:Label ID="Label12" runat="server" Font-Size="25px" ForeColor="Black" style="height: 30px" Text="Envoyer Email :"></asp:Label>
            <br />
            </div>
        </div>
        
        <div class="card-body">
    <div>

            <table class="auto-style1"  >
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="from"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server" Width="190px"></asp:TextBox>
                    </td>
                </tr>
            <tr>

                <td>

                    <asp:Label ID="Label1" runat="server" Text="To"></asp:Label>

                </td>

                <td class="auto-style2">

                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Width="190px"></asp:TextBox>

                </td>

            </tr>

            <tr>

                <td>

                    <asp:Label ID="Label2" runat="server" Text="Objet"></asp:Label>

                </td>

                <td class="auto-style2">

                    <asp:TextBox ID="TextBox2" runat="server" Width="190px"></asp:TextBox>

                </td>

            </tr>

            <tr>

                <td>

                    <asp:Label ID="Label3" runat="server" Text="Message"></asp:Label>

                </td>

                <td class="auto-style2">

                    <asp:TextBox ID="TextBox3" runat="server" Height="76px" TextMode="MultiLine" Width="190px"></asp:TextBox>

                </td>

            </tr>

            <tr>

                <td>

                    <asp:Label ID="Label4" runat="server" Text="Attachment"></asp:Label>

                </td>

                <td class="auto-style2">

                    <asp:FileUpload ID="FileUpload1"    runat="server" Width="193px" AllowMultiple="true" />

                </td>

            </tr>

            <tr>

                <td >
                    <asp:Label ID="lblt" runat="server"></asp:Label>
                </td>

                <td class="auto-style2" >

                    <asp:Button ID="Button1"  CssClass="btn btn-success"  runat="server" Text="envoyer" OnClick="Button1_Click" Width="80px" />

                </td>
                <td class="auto-style3">            
                    <asp:Button ID="Button2" CssClass="btn  btn-danger" runat="server" Text="Retour" OnClick="Button2_Click" Width="74px" />
                </td>

            </tr>

        </table>

        <div>

        </div>
        </div>
            </div>
              </div>
            </div>
        
    </form>
</body>
</html>
