<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Usuario.master" 
    AutoEventWireup="true" CodeFile="~/Controller/Producto_Usuario.aspx.cs" Inherits="View_Usuario_Producto_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            width: 20%;
        }
        .auto-style18 {
            width: 20%;
        }
        .auto-style19 {
            width: 20%;
        }
        .auto-style20 {
            width: 20%;
        }
        .auto-style22 {
            width: 20%;
            height: 23px;
        }
        .auto-style23 {
            height: 23px;
        }
        .auto-style24 {
            width: 20%;
            height: 23px;
            text-align: center;
        }
        .auto-style25 {
            width: 20%;
            text-align: center;
        }
        .auto-style26 {
            width: 20%;
            height: 24px;
        }
        .auto-style27 {
            height: 24px;
        }
        .auto-style28 {
            width: 20%;
            height: 30px;
        }
        .auto-style29 {
            width: 20%;
            height: 22px;
        }
        .auto-style30 {
            width: 20%;
            height: 22px;
            text-align: center;
        }
        .auto-style31 {
            height: 22px;
        }
        .auto-style32 {
            width: 20%;
            height: 43px;
            text-align: center;
        }
        .auto-style33 {
            width: 20%;
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25" rowspan="13" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Image ID="IMG_Foto" runat="server" Width="220px" />
            </td>
            <td class="auto-style9" colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <strong>
                <asp:Label ID="L_Nombre" runat="server"></asp:Label>
                </strong>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style9" colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Descripcion" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;<asp:Label ID="LE_Precio" runat="server" Text="Precio:"></asp:Label>
            </td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                $
                <asp:Label ID="L_Precio" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="LE_Disponible" runat="server" Text="Cantidad disponible:"></asp:Label>
            </td>
            <td class="auto-style29" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;<asp:Label ID="L_Disponible" runat="server"></asp:Label>
            </td>
            <td class="auto-style31"></td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="LE_Cantidad" runat="server" Text="Cantidad:"></asp:Label>
            </td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2" rowspan="3">
                &nbsp;
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="TB_Slider" runat="server" AutoPostBack="True"></asp:TextBox>
                        <ajaxToolkit:SliderExtender ID="TB_Slider_SliderExtender" runat="server" BoundControlID="TB_Cantidad" TargetControlID="TB_Slider" />
                        &nbsp;
                        <asp:TextBox ID="TB_Cantidad" runat="server" AutoPostBack="True" CausesValidation="True" Height="22px" TextMode="Number" Width="35px">1</asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        $
                        <asp:Label ID="L_Total" runat="server"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style32" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="LE_Total" runat="server" Text="Precio total:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28"></td>
            <td class="auto-style28" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style28" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Button ID="BTN_Agregar" runat="server" Text="Añadir al carrito" OnClick="BTN_Agregar_Click" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
                <ajaxToolkit:ConfirmButtonExtender ID="BTN_Agregar_ConfirmButtonExtender" runat="server" TargetControlID="BTN_Agregar" ConfirmText="¿Desea agregar al carrito?" />
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <h4>
                    <asp:Label ID="LE_Ficha" runat="server" Text="Ficha tecnica"></asp:Label>
                </h4>
            </td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style9" colspan="3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Image ID="IMG_Ficha" runat="server" Width="300px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

