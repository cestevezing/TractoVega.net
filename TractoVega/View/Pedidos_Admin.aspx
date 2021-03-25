<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Admin.master" AutoEventWireup="true"
    CodeFile="~/Controller/Pedidos_Admin.aspx.cs" Inherits="View_Admin_Pedidos_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 40%;
        }
        .auto-style20 {
            width: 40%;
            height: 25px;
        }
        .auto-style21 {
            height: 25px;
            width: 25%;
        }
        .auto-style26 {
            width: 25%;
            height: 26px;
        }
        .auto-style27 {
            width: 259px;
        }
    .auto-style28 {
        width: 25%;
    }
    .auto-style29 {
        width: 25%;
        height: 26px;
        text-align: left;
    }
        .auto-style30 {
            width: 40%;
            text-align: center;
        }
        .auto-style31 {
            width: 25%;
            height: 30px;
        }
        .auto-style32 {
            width: 40%;
            height: 30px;
        }
        .auto-style33 {
            width: 259px;
            height: 30px;
        }
        .auto-style34 {
            height: 26px;
        }
        .auto-style35 {
            width: 259px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <h3 class="auto-style9">
                    <asp:Label ID="L_Titulo" runat="server" Text="Pedidos"></asp:Label>
                </h3>
            </td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2"></td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style29" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Estado" runat="server" Text="Estado:   "></asp:Label>
                <asp:DropDownList ID="DDL_Estados" runat="server" AutoPostBack="True" CausesValidation="True">
                    <asp:ListItem Value="0" Selected="True">Todos</asp:ListItem>
                    <asp:ListItem Value="1">En proceso</asp:ListItem>
                    <asp:ListItem Value="2">Entregado</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style34" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                &nbsp;<asp:Label ID="L_Usuario" runat="server" Text="Digite id usuario:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TB_Buscar" runat="server" AutoPostBack="True" CausesValidation="True" MaxLength="6"></asp:TextBox>
                <asp:RegularExpressionValidator ID="REV_Usuario" runat="server" ControlToValidate="TB_Buscar" ErrorMessage="Digite solo numeros" ForeColor="#FF6600" ValidationExpression="\d*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2"></td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <asp:GridView ID="GV_Pedidos" runat="server" AllowPaging="True" CellPadding="4" DataSourceID="OBS_Pedidos" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GV_Pedidos_SelectedIndexChanged" CellSpacing="1" AutoGenerateColumns="False" OnRowDataBound ="GV_Pedidos_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LB_Detalles" runat="server" CausesValidation="False" CommandName="Select" Text="Detalles"></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle ForeColor="#FF6600" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="id" HeaderText="N° pedido" />
                        <asp:BoundField DataField="usuarioId" HeaderText="Usuario" />
                        <asp:BoundField DataField="fechapedido" HeaderText="Fecha pedido" />
                        <asp:BoundField DataField="fechaentrega" HeaderText="Fecha entrega" />
                        <asp:TemplateField HeaderText="Estado">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("estado") %>' ></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("estado") %>'></asp:Label>
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
                <asp:ObjectDataSource ID="OBS_Pedidos" runat="server" SelectMethod="obtenerPedidos" TypeName="DBLogica.DLPedidos">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DDL_Estados" Name="estado" PropertyName="SelectedValue" Type="Int32" DefaultValue="" />
                        <asp:ControlParameter ControlID="TB_Buscar" DefaultValue="0" Name="usuario" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style32" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <asp:Button ID="BTN_Ventas" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" OnClick="BTN_Ventas_Click" Text="Reporte ventas del mes" Width="174px" />
                <ajaxToolkit:ConfirmButtonExtender ID="BTN_Ventas_ConfirmButtonExtender" runat="server" ConfirmText="¿Desea generar el reporte de ventas del mes?" TargetControlID="BTN_Ventas" />
            </td>
            <td class="auto-style33"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2"></td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <strong>
                <asp:Label ID="L_Detalles" runat="server" Text="Detalles"></asp:Label>
                </strong>
            </td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <asp:GridView ID="GV_Detalles" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" CellSpacing="2">
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
                    <PagerStyle BackColor="#FF6600" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style32" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <asp:Button ID="BTN_Confirmar" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" OnClick="BTN_Confirmar_Click" Text="Confirmar entrega" />
                <ajaxToolkit:ConfirmButtonExtender ID="BTN_Confirmar_ConfirmButtonExtender" runat="server" ConfirmText="¿Desea confirmar la entrega ?" TargetControlID="BTN_Confirmar" />
            </td>
            <td class="auto-style33"></td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

