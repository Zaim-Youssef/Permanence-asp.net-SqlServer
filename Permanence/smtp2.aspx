<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smtp2.aspx.cs" Inherits="Permanence.smtp2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {

            width: 41%;

        }

        .auto-style2 {

            height: 30px;

        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" border="1" style="background-color: #6699FF">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="from"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="177px"></asp:TextBox>
                    </td>
                </tr>
            <tr>

                <td>

                    <asp:Label ID="Label1" runat="server" Text="To"></asp:Label>

                </td>

                <td>

                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Width="177px"></asp:TextBox>

                </td>

            </tr>

            <tr>

                <td>

                    <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>

                </td>

                <td>

                    <asp:TextBox ID="TextBox2" runat="server" Width="177px"></asp:TextBox>

                </td>

            </tr>

            <tr>

                <td>

                    <asp:Label ID="Label3" runat="server" Text="Message"></asp:Label>

                </td>

                <td>

                    <asp:TextBox ID="TextBox3" runat="server" Height="76px" TextMode="MultiLine" Width="177px"></asp:TextBox>

                </td>

            </tr>

            <tr>

                <td>

                    <asp:Label ID="Label4" runat="server" Text="Attachment"></asp:Label>

                </td>

                <td>

                    <asp:FileUpload ID="FileUpload1" runat="server" Width="187px" AllowMultiple="true" />

                </td>

            </tr>

            <tr>

                <td class="auto-style2"></td>

                <td class="auto-style2">

                    <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />

                </td>

            </tr>

        </table>

        <div>

        </div>
        </div>
    </form>
</body>
</html>
