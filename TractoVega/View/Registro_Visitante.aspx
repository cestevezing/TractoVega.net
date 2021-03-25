<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Visitante.master"
    AutoEventWireup="true" CodeFile="~/Controller/Registro_Visitante.aspx.cs" Inherits="View_Visitante_Registro_Visitante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 25%;
        }
        .auto-style19 {
            height: 23px;
            width: 25%;
        }
        .auto-style20 {
            width: 25%;
        }
        .auto-style22 {
            width: 25%;
        }
        .auto-style24 {
            width: 25%;
            text-align: left;
        }
        .auto-style25 {
            height: 23px;
            width: 25%;
            text-align: left;
        }
        .auto-style26 {
            width: 25%;
            text-align: center;
        }
        .auto-style28 {
            width: 25%;
            height: 26px;
        }
        .auto-style29 {
            width: 25%;
            text-align: left;
            height: 26px;
        }
        .auto-style31 {
            height: 26px;
        }
        .auto-style32 {
            width: 25%;
            text-align: right;
        }
        .auto-style34 {
            width: 25%;
            height: 30px;
        }
        .auto-style35 {
            width: 25%;
            text-align: left;
            height: 30px;
        }
        .auto-style36 {
            height: 30px;
        }
        .auto-style37 {
            text-align: left;
            height: 30px;
        }
        .trans {
            opacity: 0.3;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style9" colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"><h3 class="auto-style9" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Titulo" runat="server" Text="Registro"></asp:Label>
                </h3></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Nombre" runat="server" Text="Nombre completo"></asp:Label>
            </td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Nombre" runat="server" MaxLength="30"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TB_Nombre_TextBoxWatermarkExtender" runat="server" TargetControlID="TB_Nombre" WatermarkText="Pepe Reina" WatermarkCssClass="trans" />
                <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ForeColor="#FF6600" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="Digite solo letras" ForeColor="#FF6600" ValidationExpression="[a-zA-Z ]*" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style34"></td>
            <td class="auto-style35" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Correo" runat="server" Text="Correo"></asp:Label>
            </td>
            <td class="auto-style35" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Correo" runat="server" TextMode="Email" MaxLength="30"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TB_Correo_TextBoxWatermarkExtender" runat="server" TargetControlID="TB_Correo" WatermarkText="example@example.com" WatermarkCssClass="trans" />
                <asp:RequiredFieldValidator ID="RFV_Correo" runat="server" ControlToValidate="TB_Correo" ErrorMessage="*" SetFocusOnError="True" ForeColor="#FF6600" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Correo" runat="server" ErrorMessage="Correo no valido" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TB_Correo" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style36"></td>
        </tr>
        <tr>
            <td class="auto-style34"></td>
            <td class="auto-style35" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_User" runat="server" Text="User name"></asp:Label>
            </td>
            <td class="auto-style37" colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_UserName" runat="server" MaxLength="20"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TB_UserName_TextBoxWatermarkExtender" runat="server" TargetControlID="TB_UserName" WatermarkText="Pepe1" WatermarkCssClass="trans" />
                <asp:RequiredFieldValidator ID="RFV_UserName" runat="server" ControlToValidate="TB_UserName" ErrorMessage="*" ForeColor="#FF6600" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_User" runat="server" ControlToValidate="TB_UserName" ErrorMessage="Digite solo numeros y letras" ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9 ]*" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style34"></td>
            <td class="auto-style35" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Clave" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td class="auto-style37" colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Contraseña" runat="server" MaxLength="20"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TB_Contraseña_TextBoxWatermarkExtender" runat="server" TargetControlID="TB_Contraseña" WatermarkText="1234" WatermarkCssClass="trans" />
                <asp:RequiredFieldValidator ID="RFV_Contrasena" runat="server" ControlToValidate="TB_Contraseña" ErrorMessage="*" ForeColor="#FF6600" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Clave" runat="server" ControlToValidate="TB_Contraseña" ErrorMessage="Digite solo numeros y letras" ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9 ]*" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Direccion" runat="server" Text="Direccion"></asp:Label>
            </td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Direccion" runat="server" MaxLength="50"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TB_Direccion_TextBoxWatermarkExtender" runat="server" TargetControlID="TB_Direccion" WatermarkText="14th street" WatermarkCssClass="trans" />
                <asp:RequiredFieldValidator ID="RFV_Direccion" runat="server" ControlToValidate="TB_Direccion" ErrorMessage="*" ForeColor="#FF6600" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Direccion" runat="server" ControlToValidate="TB_Direccion" ErrorMessage="Caracteres no validos " ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9\-\.\# ]*" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28"></td>
            <td class="auto-style29" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Telefono" runat="server" Text="Telefono"></asp:Label>
            </td>
            <td class="auto-style29" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Telefono" runat="server" MaxLength="20"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TB_Telefono_TextBoxWatermarkExtender" runat="server" TargetControlID="TB_Telefono" WatermarkText="3766218" WatermarkCssClass="trans" />
                <asp:RequiredFieldValidator ID="RFV_Telefono" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ForeColor="#FF6600" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="[0-9extEXT\.\-\(\) ]*" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style31"></td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Tarjeta" runat="server" Text="N° tarjeta de credito"></asp:Label>
            </td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Tarjeta" runat="server" MaxLength="10"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TB_Tarjeta_TextBoxWatermarkExtender" runat="server" TargetControlID="TB_Tarjeta" WatermarkText="987654" WatermarkCssClass="trans" />
                <asp:RequiredFieldValidator ID="RFV_Tarjeta" runat="server" ControlToValidate="TB_Tarjeta" EnableTheming="False" ErrorMessage="*" ForeColor="#FF6600" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Tarjeta" runat="server" ControlToValidate="TB_Tarjeta" ErrorMessage="Digite solo numeros" ForeColor="#FF6600" ValidationExpression="\d+" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style32" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Button ID="BTN_Registro" runat="server" OnClick="Button1_Click" Text="Registrarse" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" style="height: 26px" ValidationGroup="a" />
                <ajaxToolkit:ConfirmButtonExtender ID="BTN_Registro_ConfirmButtonExtender" runat="server" ConfirmText="¿Desea realizar el registro?" TargetControlID="BTN_Registro" />
            </td>
            <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

