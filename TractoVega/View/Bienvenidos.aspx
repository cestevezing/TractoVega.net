<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Bienvenidos.aspx.cs" Inherits="View_Bienvenidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            width: 1330px;
        }

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 25%;
        }
        .auto-style5 {
            width: 25%;
        }
        .auto-style6 {
            height: 23px;
            width: 50%;
        }
        .auto-style7 {
            width: 50%;
        }
        .auto-style8 {
            width: 50%;
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            font-size: 80pt;
        }
        .auto-style10 {
            width: 25%;
            height: 25px;
        }
        .auto-style11 {
            width: 50%;
            text-align: center;
            height: 25px;
        }
        .auto-style12 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Image ID="Image1" runat="server" Height="143px" ImageUrl="~/Archivos/tractor.jpg" Width="500px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                        <h1 class="auto-style9" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: #FF6600;">WELCOME</h1>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                        &nbsp;</td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                        <asp:Image ID="Image2" runat="server" Height="25px" ImageUrl="~/Archivos/idioma.png" Width="25px" />
&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DDL_Idioma" runat="server" DataSourceID="ODS_Idioma" DataTextField="nombre" DataValueField="id" OnSelectedIndexChanged="DDL_Idioma_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ODS_Idioma" runat="server" SelectMethod="obtenerIdiomas" TypeName="DBLogica.DLIdioma" ></asp:ObjectDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
