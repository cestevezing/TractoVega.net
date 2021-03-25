<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Admin.master" AutoEventWireup="true"
    CodeFile="~/Controller/Modificar_Proveedor_Admin.aspx.cs" Inherits="View_Admin_Modificar_Proveedor_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            width: 25%;
        }
        .auto-style18 {
            width: 25%;
        }
        .auto-style19 {
            width: 25%;
        }
        .auto-style20 {
            width: 25%;
            text-align: right;
        }
        .auto-style21 {
            width: 25%;
            height: 25px;
        }
        .auto-style22 {
            height: 25px;
        }
        .auto-style23 {
            width: 25%;
            height: 28px;
        }
        .auto-style24 {
            height: 28px;
        }
        .auto-style25 {
            width: 25%;
            height: 30px;
        }
        .auto-style26 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style9" colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Titulo" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Referencia" runat="server" Text="Referencia:"></asp:Label>
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Referencia" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Nombre" runat="server" Text="Nombre:"></asp:Label>
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Nombre" runat="server" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9-_./ ]*"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style23" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style23" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Telefono" runat="server" Text="Telefono:"></asp:Label>
            </td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Telefono" runat="server" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="[0-9extEXT\.\-\(\) ]*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Correo" runat="server" Text="Correo:"></asp:Label>
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Correo" runat="server" TextMode="Email" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_Correo" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Correo" runat="server" ControlToValidate="TB_Correo" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Direccion" runat="server" Text="Direccion:"></asp:Label>
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Direccion" runat="server" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Direccion" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Direccion" runat="server" ErrorMessage="Caracteres no validos " ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9\-\.\# ]*" ControlToValidate="TB_Direccion"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Button ID="BTN_Guardar" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" OnClick="BTN_Guardar_Click" Text="Guardar" />
                <ajaxToolkit:ConfirmButtonExtender ID="BTN_Guardar_ConfirmButtonExtender" runat="server" TargetControlID="BTN_Guardar" />
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

