<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Admin.master" AutoEventWireup="true"
    CodeFile="~/Controller/Inventario_Admin.aspx.cs" Inherits="View_Admin_Inventario_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            width: 6%;
        }
        .auto-style18 {
            width: 20%;
        }
        .auto-style21 {
            width: 24%;
            text-align: right;
            height: 59px;
        }
        .auto-style22 {
            font-size: small;
        }
        .auto-style23 {
            width: 20%;
            height: 59px;
        }
        .auto-style24 {
            height: 59px;
            width: 345px;
        }
        .auto-style25 {
            width: 6%;
            height: 59px;
        }
        .auto-style26 {
            width: 10%;
        }
        .auto-style27 {
            width: 45%;
            text-align: center;
            height: 59px;
        }
        .auto-style28 {
            width: 10%;
            height: 30px;
        }
        .auto-style29 {
            width: 20%;
            height: 30px;
        }
        .auto-style31 {
            width: 45%;
            height: 30px;
        }
        .auto-style32 {
            width: 45%;
        }
        .auto-style33 {
            width: 6%;
            height: 30px;
        }
        .auto-style34 {
            width: 24%;
        }
        .auto-style35 {
            width: 24%;
            height: 30px;
        }
    .auto-style36 {
        height: 29px;
    }
        .auto-style37 {
            width: 6%;
            height: 25px;
        }
        .auto-style38 {
            width: 20%;
            height: 25px;
        }
        .auto-style39 {
            width: 24%;
            height: 25px;
        }
        .auto-style40 {
            width: 45%;
            height: 25px;
        }
        .auto-style41 {
            width: 10%;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style34" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style32" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <h3 class="auto-style9">
                    <asp:Label ID="L_Titulo" runat="server" Text="Productos"></asp:Label>
                </h3>
            </td>
        </tr>
        <tr>
            <td class="auto-style37"></td>
            <td class="auto-style38" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style39" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style40" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style41"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style23" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                &nbsp;
                <asp:Label ID="L_Categoria" runat="server" Text="Categoria:"></asp:Label>
                <asp:DropDownList ID="DDL_Categoria" runat="server" AutoPostBack="True" DataSourceID="OBS_Categorias" DataTextField="nombre" DataValueField="id" CausesValidation="True" >
                    <asp:ListItem Selected="True" Value="0">Seleccionar</asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="OBS_Categorias" runat="server" SelectMethod="categoriasDDL" TypeName="DBLogica.DLCategoria"></asp:ObjectDataSource>
            </td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Digite" runat="server" Text="Digite el nombre:"></asp:Label>
            </td>
            <td class="auto-style27" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Buscar" runat="server" AutoPostBack="True" CausesValidation="True" MaxLength="6"></asp:TextBox>
                <asp:RegularExpressionValidator ID="REV_Buscar" runat="server" ControlToValidate="TB_Buscar" ErrorMessage="Digite solo numeros y letras" ValidationExpression="[a-zA-Z0-9 ]*" ForeColor="#FF6600"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style24">
                </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style34" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style32" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td colspan="3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:GridView ID="GV_Productos" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style22" CellSpacing="2" AutoGenerateColumns="False" DataSourceID="OBS_Productos" PageSize="8" OnRowDataBound="GV_Productos_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Referencia" />
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="precio" HeaderText="Precio" />
                        <asp:BoundField DataField="descripcion" HeaderText="Descripcion" />
                        <asp:TemplateField HeaderText="Foto">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Foto") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Foto") %>' Width="60px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ficha Tecnica">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("fichaTecnica") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("fichaTecnica") %>' Width="60px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="proveedorId" HeaderText="Proveedor" />
                        <asp:BoundField DataField="categoriaId" HeaderText="Categoria" />
                        <asp:BoundField DataField="cantidad" HeaderText="Cantidad" />
                        <asp:BoundField DataField="cantidadminima" HeaderText="Cantidad Min" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="BTN_Editar" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" Text="Editar" CommandArgument ='<%# Eval("id") %>' OnClick="BTN_Editar_Click"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="BTN_Eliminar" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" Text="Eliminar" CommandArgument ='<%# Eval("id") %>' OnClick="BTN_Eliminar_Click" />
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
                <asp:ObjectDataSource ID="OBS_Productos" runat="server" SelectMethod="productosUsuario" TypeName="DBLogica.DLProducto">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DDL_Categoria" DefaultValue="-1" Name="categoria" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="TB_Buscar" DefaultValue="-1" Name="nombre" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">
                <asp:Button ID="BTN_Agregar" runat="server" OnClick="BTN_Agregar_Click" Text="Agregar producto" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
            </td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style35"></td>
            <td class="auto-style31"></td>
            <td class="auto-style28"></td>
        </tr>
        <tr>
            <td colspan="5" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" class="auto-style36">
                <h3 class="auto-style9">
                    <asp:Label ID="L_Agotarse" runat="server" Text="Productos proximos a agotarse"></asp:Label>
                </h3>
            </td>
        </tr>
        <tr>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style34" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style32" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style9" colspan="3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:GridView ID="GV_Agotado" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="OBS_Agotado" ForeColor="#333333" GridLines="None" PageSize="6" CellSpacing="2">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Referencia" />
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="precio" HeaderText="Precio" />
                        <asp:BoundField DataField="descripcion" HeaderText="Descripcion" />
                        <asp:TemplateField HeaderText="Foto">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("foto") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="IMG_Foto" runat="server" ImageUrl='<%# Eval("foto") %>' Width="60px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ficha tecnica">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("fichatencica") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="IMG_Ficha" runat="server" ImageUrl='<%# Eval("fichatencica") %>' Width="60px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="proveedor" HeaderText="Proveedor" />
                        <asp:BoundField DataField="categoria" HeaderText="Categoria" />
                        <asp:BoundField DataField="cantidad" HeaderText="Cantidad" />
                        <asp:BoundField DataField="cantidadminima" HeaderText="Cantidad Min" />
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
                <asp:ObjectDataSource ID="OBS_Agotado" runat="server" SelectMethod="ObtenerInformeInventario" TypeName="DBLogica.DLProducto"></asp:ObjectDataSource>
            </td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">
                <asp:Button ID="BTN_Reporte" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" OnClick="BTN_Reporte_Click" Text="Generar Reporte" />
                <ajaxToolkit:ConfirmButtonExtender ID="BTN_Reporte_ConfirmButtonExtender" runat="server" ConfirmText="¿Desea generar el reporte de  productos proximos a agotarse?" TargetControlID="BTN_Reporte" />
            </td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

