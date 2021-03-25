<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Visitante.master"
    AutoEventWireup="true" CodeFile="~/Controller/Producto_Visitante.aspx.cs" Inherits="View_Visitante_Producto_Visitante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 20%;
        }
        .auto-style19 {
            height: 23px;
            width: 20%;
        }
        .auto-style20 {
            width: 20%;
        }
        .auto-style24 {
            width: 20%;
        }
        .auto-style25 {
            height: 23px;
            width: 20%;
        }
        .auto-style26 {
            height: 23px;
            width: 20%;
            text-align: center;
        }
        .auto-style27 {
            width: 20%;
            text-align: center;
        }
        .auto-style28 {
            height: 26px;
            width: 20%;
        }
        .auto-style29 {
            height: 26px;
        }
        .auto-style30 {
            width: 20%;
            height: 25px;
        }
        .auto-style36 {
            width: 20%;
            height: 30px;
        }
        .auto-style37 {
            height: 30px;
        }
        .auto-style43 {
            height: 24px;
            width: 20%;
        }
        .auto-style44 {
            height: 24px;
            width: 20%;
            text-align: center;
        }
        .auto-style45 {
            height: 21px;
            width: 20%;
        }
        .auto-style46 {
            height: 21px;
            width: 20%;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style27" rowspan="13" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Image ID="IMG_Foto" runat="server" Width="220px" />
            </td>
            <td class="auto-style9" colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"><strong>
                <asp:Label ID="L_Nombre" runat="server"></asp:Label>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style9" colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Descripcion" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="LE_Precio" runat="server" Text="Precio:"></asp:Label>
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">$
                <asp:Label ID="L_Precio" runat="server"></asp:Label>
            </td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="LE_Disponible" runat="server" Text="Cantidad disponible:"></asp:Label>
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Disponible" runat="server"></asp:Label>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28"></td>
            <td class="auto-style28" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style28" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td class="auto-style43"></td>
            <td class="auto-style44" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <br />
                <asp:Label ID="LE_Cantidad" runat="server" Text="Cantidad:"></asp:Label>
            </td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2" rowspan="3">
                &nbsp;
                <br />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="TB_Slider" runat="server" AutoPostBack="True"></asp:TextBox>
                        <ajaxToolkit:SliderExtender ID="TB_Slider_SliderExtender" runat="server" BoundControlID="TB_Cantidad" TargetControlID="TB_Slider" />
                        &nbsp;<asp:TextBox ID="TB_Cantidad" runat="server" AutoPostBack="True" CausesValidation="True" Height="18px" TextMode="Number" Width="38px">1</asp:TextBox>
                        <br />
                        <br />
                        <br />
                        $&nbsp;
                        <asp:Label ID="L_Total" runat="server"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        </tr>
        <tr>
            <td class="auto-style45"></td>
            <td class="auto-style46" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="LE_Total" runat="server" Text="Precio total:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"></td>
            <td class="auto-style36" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style36" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Button ID="BTN_Agregar" runat="server" OnClick="BTN_Agregar_Click" Text="Añadir a carrito" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
            </td>
            <td class="auto-style37"></td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style27" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <h3>
                    <asp:Label ID="LE_Ficha" runat="server" Text="Ficha tecnica"></asp:Label>
                </h3>
            </td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style9" colspan="3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Image ID="IMG_Ficha" runat="server" Width="300px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

