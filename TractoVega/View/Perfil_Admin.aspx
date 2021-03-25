<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Admin.master" AutoEventWireup="true"
    CodeFile="~/Controller/Perfil_Admin.aspx.cs" Inherits="View_Admin_Perfil_Admin" %>

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
            width: 25%;
            height: 24px;
        }
        .auto-style22 {
            height: 24px;
        }
        .auto-style23 {
            width: 25%;
            text-align: right;
        }
        .auto-style24 {
            width: 25%;
            height: 21px;
        }
    .auto-style25 {
        margin-left: 40px;
    }
        .auto-style26 {
            width: 25%;
            height: 26px;
        }
        .auto-style27 {
            height: 26px;
        }
        .auto-style28 {
            width: 25%;
            height: 30px;
        }
        .auto-style29 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style9" colspan="2" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">
                <h3>
                    <asp:Label ID="L_Perfil" runat="server" Text="Mi perfil"></asp:Label>
                </h3>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
        <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_Nombre" runat="server" Text="Nombre:"></asp:Label>
            </td>
            <td class="auto-style20" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Nombre" runat="server" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="Digite solo letras" ForeColor="#FF6600" ValidationExpression="[a-zA-Z ]*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
        <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_Correo" runat="server" Text=" Correo:"></asp:Label>
            </td>
            <td class="auto-style21" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Correo" runat="server" MaxLength="100" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Correo" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Correo" runat="server" ControlToValidate="TB_Correo" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
        <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_User" runat="server" Text="User name:"></asp:Label>
            </td>
            <td class="auto-style26" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_UserName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
        <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_Clave" runat="server" Text="Contraseña:"></asp:Label>
            </td>
            <td style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif" colspan="2" class="auto-style25">
                <asp:TextBox ID="TB_Contraseña" runat="server" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Contraseña" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Clave" runat="server" ControlToValidate="TB_Contraseña" ErrorMessage="Digite solo numeros y letras" ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9 ]*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
        <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_Direccion" runat="server" Text="Direccion:"></asp:Label>
            </td>
            <td class="auto-style19" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Direccion" runat="server" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_Direccion" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Direccion" runat="server" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9\-\.\# ]*" ControlToValidate="TB_Direccion"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
        <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_Telefono" runat="server" Text="Telefono:"></asp:Label>
            </td>
            <td class="auto-style24" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Telefono" runat="server" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="[0-9extEXT\.\-\(\) ]*" ControlToValidate="TB_Telefono"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style28"></td>
        <td class="auto-style28" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <asp:Label ID="L_Tarjeta" runat="server" Text="N° tarjeta de credito:"></asp:Label>
            </td>
            <td class="auto-style28" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Credito" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TB_Credito" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Tarjeta" runat="server" ControlToValidate="TB_Credito" ErrorMessage="Digite solo numeros" ForeColor="#FF6600" ValidationExpression="\d*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style23" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">
                <asp:Button ID="BTN_Guardar" runat="server" Text="Guardar" OnClick="BTN_Guardar_Click" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
                <ajaxToolkit:ConfirmButtonExtender ID="BTN_Guardar_ConfirmButtonExtender" runat="server" ConfirmText="¿Desea realizar los cambios?" TargetControlID="BTN_Guardar" />
            </td>
            <td class="auto-style19" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: &quot;Segoe UI&quot;, Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

