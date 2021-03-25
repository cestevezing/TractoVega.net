<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Usuario.master" 
    AutoEventWireup="true" CodeFile="~/Controller/Carrito_Usuario.aspx.cs" Inherits="View_Usuario_Carrito_Usuario" %>

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
            height: 22px;
        }
        .auto-style21 {
            height: 22px;
        }
        .auto-style22 {
            width: 25%;
            height: 23px;
        }
        .auto-style23 {
            height: 23px;
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
            <td class="auto-style20"></td>
            <td class="auto-style21" colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <h3 class="auto-style9">
                    <asp:Label ID="L_Titulo" runat="server" Text="Carrito de compras"></asp:Label>
                </h3>
            </td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Mensaje" runat="server"></asp:Label>
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <div class="auto-style9">
                <asp:GridView ID="GV_Carrito" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CellSpacing="2" ForeColor="#333333" GridLines="None" DataKeyNames="id" DataSourceID="OBS_Carrito" OnRowDataBound="GV_Carrito_RowDataBound"  >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="foto" HeaderText="Foto">
                        </asp:ImageField>
                        <asp:BoundField DataField="idProducto" HeaderText="Referencia" />
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="precio" HeaderText="Precio unitario" />
                        <asp:BoundField DataField="cantidad" HeaderText="Cantidad" />
                        <asp:BoundField DataField="total" HeaderText="Total" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="BTN_Eliminar" runat="server" CommandArgument='<%#Eval("id")%>' OnClick="Button1_Click" Text="Eliminar" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#FF6600" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FF6600" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                </div>
                <asp:ObjectDataSource ID="OBS_Carrito" runat="server" SelectMethod="carritoUsuario" TypeName="DBLogica.DLCarrito">
                    <SelectParameters>
                        <asp:SessionParameter Name="buscar" SessionField="user_id" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
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
            <td class="auto-style22"></td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Button ID="BTN_Pedido" runat="server" OnClick="BTN_Pedido_Click" Text="Generar pedido" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
                <ajaxToolkit:ConfirmButtonExtender ID="BTN_Pedido_ConfirmButtonExtender" runat="server" ConfirmText="¿Desea realizar el pedido?" TargetControlID="BTN_Pedido" />
            </td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
