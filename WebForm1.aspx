<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="crub.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-size: x-large;
            width: 418px;
        }
        .auto-style4 {
            font-size: x-large;
            width: 55px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>REGISTRO DE ESTUDIANTES</h1>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Id</td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" style="font-size: x-large" Text="Search" />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Nombre</td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Genero</td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style2">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                <asp:ListItem>Masculino</asp:ListItem>
                                <asp:ListItem>Femenino</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Email</td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Ciudad</td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
              


                <br />
                <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="New" />
                <asp:Button ID="Button2" runat="server" CssClass="auto-style2" OnClick="Button2_Click" Text="Save" />
                <asp:Button ID="Button3" runat="server" CssClass="auto-style2" Text="Update" OnClick="Button3_Click" />
                <asp:Button ID="Button4" runat="server" CssClass="auto-style2" OnClick="Button4_Click" Text="Delete" />
                <asp:Button ID="Button5" runat="server" CssClass="auto-style2" OnClick="Button5_Click" Text="Show" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="259px" Width="472px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
              


            </center>
        </div>
    </form>
</body>
</html>
