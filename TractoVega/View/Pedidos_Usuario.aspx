<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Usuario.master" AutoEventWireup="true" 
    CodeFile="~/Controller/Pedidos_Usuario.aspx.cs" Inherits="View_Usuario_Pedidos_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .auto-style18 {
            width: 20%;
        }
        .auto-style19 {
            width: 20%;
        }
        .auto-style20 {
            width: 20%;
            text-align: center;
            height: 23px;
        }
        .auto-style21 {
            width: 20%;
            height: 23px;
        }
        .auto-style23 {
            height: 23px;
        }
        .auto-style24 {
            width: 20%;
            height: 23px;
            text-align: right;
        }
        .auto-style25 {
            width: 20%;
            height: 24px;
        }
        .auto-style26 {
            height: 24px;
        }
        .auto-style27 {
            width: 20%;
            text-align: center;
        }
        .auto-style28 {
            height: 30px;
            text-align: center;
            width: 20%;
        }
        .auto-style29 {
            width: 20%;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table  >
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                </td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <h3 class="auto-style9">
                    <asp:Label ID="L_Titulo" runat="server" Text="Pedidos"></asp:Label>
                </h3>
            </td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Estado" runat="server" Text="Estado:"></asp:Label>
            </td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:DropDownList ID="DDL_Estado" runat="server" AutoPostBack="True" Height="28px" >
                    <asp:ListItem Selected="True" Value="0">Todos</asp:ListItem>
                    <asp:ListItem Value="1">En proceso</asp:ListItem>
                    <asp:ListItem Value="2">Entegrado</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td colspan="3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <div class="auto-style9">
                <asp:GridView ID="GV_Pedidos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" CellSpacing="2" OnSelectedIndexChanged="GV_Pedidos_SelectedIndexChanged" AllowPaging="True" DataSourceID="OBS_Pedidos" PageSize="6" OnRowDataBound ="GV_Pedidos_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LB_Detalles" runat="server" CausesValidation="False" CommandName="Select" Text="Detalles"></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle ForeColor="#FF6600" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="id" HeaderText="N° pedido" />
                        <asp:BoundField DataField="fechapedido" HeaderText="Fecha Pedido" />
                        <asp:BoundField DataField="fechaentrega" HeaderText="Fecha Entrega" />
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
                <asp:ObjectDataSource ID="OBS_Pedidos" runat="server" SelectMethod="obtenerPedidos" TypeName="DBLogica.DLPedidos">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DDL_Estado" DefaultValue="0" Name="estado" PropertyName="SelectedValue" Type="Int32" />
                        <asp:SessionParameter Name="usuario" SessionField="user_id" Type="String" DefaultValue="" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                </td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                </td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                </td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style27" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"><strong>
                <asp:Label ID="L_Detalles" runat="server" Text="Detalles"></asp:Label>
                </strong></td>
            <td class="auto-style28" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style28" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style28" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td colspan="3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" class="auto-style9">
                <asp:GridView ID="GV_Detalles" runat="server" CellPadding="4" CellSpacing="2" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Referencia" />
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="precio" HeaderText="Precio" />
                        <asp:BoundField DataField="cantidad" HeaderText="Cantidad" />
                        <asp:BoundField DataField="total" HeaderText="Total" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#FF6600" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

