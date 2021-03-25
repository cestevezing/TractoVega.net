<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Visitante.master" 
    AutoEventWireup="true" CodeFile="~/Controller/Login_Visitante.aspx.cs" Inherits="View_Visitante_Login_Visitante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style19 {
            width: 35%;
            height: 110px;
        }
        .auto-style20 {
            text-align: center;
            height: 110px;
        }
        .auto-style21 {
            height: 110px;
        }
        .auto-style22 {
            width: 35%;
            height: 28px;
        }
        .auto-style23 {
            height: 28px;
        }
        .auto-style24 {
            width: 100%;
            height: 400px;
        }
        .auto-style25 {
            width: 35%;
            height: 15px;
        }
        .auto-style26 {
            height: 15px;
        }
        .auto-style27 {
            width: 367px;
        }
        .auto-style28 {
            width: 222px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style24" >
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style20">
                <asp:Login ID="L_Autenticate" runat="server">
                    <LayoutTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td class="auto-style27">
                                    <table cellpadding="0" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                                        <tr>
                                            <td align="center" colspan="2"><strong>
                                                <asp:Label ID="L_Titulo" runat="server" Text="Iniciar sesión"></asp:Label>
                                                </strong></td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nombre de usuario:</asp:Label>
                                            </td>
                                            <td class="auto-style28">
                                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1" ForeColor="#FF6600">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">&nbsp;</td>
                                            <td class="auto-style28">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                            </td>
                                            <td class="auto-style28">
                                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1" ForeColor="#FF6600">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">&nbsp;</td>
                                            <td class="auto-style28">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:CheckBox ID="RememberMe" runat="server" Text="Recordármelo la próxima vez." />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:LinkButton ID="LB_Recuperar" runat="server" ForeColor="#FF6600" OnClick="LinkButton1_Click">Recuperar contraseña</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:Red;">
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2">
                                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Inicio de sesión" ValidationGroup="Login1" OnClick="LoginButton_Click" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:Login>
            </td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style23">
                <asp:Label ID="L_Error" runat="server" ForeColor="#FF6600"></asp:Label>
            </td>
            <td class="auto-style23"></td>
        </tr>
    </table>
</asp:Content>

