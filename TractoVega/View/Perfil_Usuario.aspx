<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Usuario.master" AutoEventWireup="true"
    CodeFile="~/Controller/Perfil_Usuario.aspx.cs" Inherits="View_Usuario_Perfil_Usuario" %>

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
            height: 23px;
        }
        .auto-style21 {
            height: 23px;
        }
        .auto-style22 {
            width: 25%;
            height: 26px;
        }
        .auto-style23 {
            height: 26px;
        }
        .auto-style24 {
            width: 25%;
            text-align: right;
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
        <td colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <h3 class="auto-style9">
                <asp:Label ID="L_Perfil" runat="server" Text="Mi perfil"></asp:Label>
            </h3>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        <td class="auto-style21"></td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_Nombre" runat="server" Text="Nombre:"></asp:Label>
        </td>
        <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:TextBox ID="TB_Nombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="Digite solo letras" ForeColor="#FF6600" ValidationExpression="[a-zA-Z ]*"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style21"></td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_Correo" runat="server" Text="Correo:"></asp:Label>
        </td>
        <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:TextBox ID="TB_Correo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Correo" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REV_Correo" runat="server" ControlToValidate="TB_Correo" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style21"></td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_User" runat="server" Text="User name:"></asp:Label>
        </td>
        <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:TextBox ID="TB_UserName" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_Clave" runat="server" Text="Contraseña:"></asp:Label>
        </td>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
            <asp:TextBox ID="TB_Contraseña" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Contraseña" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REV_Clave" runat="server" ControlToValidate="TB_Contraseña" ErrorMessage="Digite solo numeros y letras" ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9 ]*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_Direccion" runat="server" Text="Direccion:"></asp:Label>
        </td>
        <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:TextBox ID="TB_Direccion" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_Direccion" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REV_Direccion" runat="server" ControlToValidate="TB_Direccion" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9\-\.\# ]*"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_Telefono" runat="server" Text="Telefono:"></asp:Label>
        </td>
        <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:TextBox ID="TB_Telefono" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="[0-9extEXT\.\-\(\) ]*"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style21"></td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_Tarjeta" runat="server" Text="N° tarjeta de credito:"></asp:Label>
        </td>
        <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:TextBox ID="TB_Credito" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_Credito" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REV_Tarjeta" runat="server" ControlToValidate="TB_Credito" ErrorMessage="Digite solo numeros" ForeColor="#FF6600" ValidationExpression="\d*" ValidationGroup=" "></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22"></td>
        <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
        <td class="auto-style23"></td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Button ID="BTN_Guardar" runat="server" OnClick="BTN_Guardar_Click" Text="Guardar" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
            <ajaxToolkit:ConfirmButtonExtender ID="BTN_Guardar_ConfirmButtonExtender" runat="server" ConfirmText="¿Desea realizar cambios?" TargetControlID="BTN_Guardar" />
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

