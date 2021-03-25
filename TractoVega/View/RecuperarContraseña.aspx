<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Usuario.master" AutoEventWireup="true"
    CodeFile="~/Controller/RecuperarContraseña.aspx.cs" Inherits="View_Visitante_RecuperarContraseña" %>

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
            height: 30px;
        }
        .auto-style22 {
            width: 25%;
            height: 25px;
        }
        .auto-style23 {
            height: 25px;
        }
        .auto-style24 {
            width: 25%;
            text-align: right;
            height: 25px;
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
                    <asp:Label ID="L_Titulo" runat="server" Text="Recuperar contraseña"></asp:Label>
                </h3>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Digite" runat="server" Text="Digite su nueva contaseña: "></asp:Label>
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Contrasena" runat="server" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_Contrasena" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Digite" runat="server" ControlToValidate="TB_Contrasena" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9\.\-\ ]*"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                </td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                </td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Repita" runat="server" Text="Repita su nueva contraseña: "></asp:Label>
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Repetir" runat="server" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Repetir" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Repita" runat="server" ControlToValidate="TB_Repetir" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9\.\-\ ]*"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:CompareValidator ID="CV_Compare" runat="server" ControlToCompare="TB_Contrasena" ControlToValidate="TB_Repetir" ForeColor="#FF6600">No coinciden</asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Button ID="BTN_Cambiar" runat="server" OnClick="BTN_Cambiar_Click" Text="Cambiar" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

