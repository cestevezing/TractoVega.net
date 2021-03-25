<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Admin.master" AutoEventWireup="true" 
    CodeFile="~/Controller/Proveedores_Admin.aspx.cs" Inherits="View_Admin_Proveedores_Admin" %>

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
            text-align: center;
        }
        .auto-style24 {
            width: 25%;
            height: 30px;
        }
        .auto-style25 {
            height: 30px;
        }
        .auto-style26 {
            width: 25%;
            height: 25px;
        }
        .auto-style27 {
            height: 25px;
        }
        .auto-style28 {
            height: 25px;
            text-align: center;
        }
        .auto-style29 {
            width: 25%;
            text-align: right;
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
                    <asp:Label ID="L_Titulo" runat="server" Text="Proveedores"></asp:Label>
                </h3>
            </td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Referencia" runat="server" Text="Digite la referencia:"></asp:Label>
            </td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Buscar" runat="server" AutoPostBack="True" MaxLength="6" CausesValidation="True"></asp:TextBox>
                <asp:RegularExpressionValidator ID="REV_Buscar" runat="server" ControlToValidate="TB_Buscar" ErrorMessage="Digite solo numeros" ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9 ]*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style23" colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:GridView ID="GV_Proveedores" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CellSpacing="2" ForeColor="#333333" GridLines="None" PageSize="6" DataSourceID="OBS_Proveedor" OnRowDataBound ="GV_Proveedores_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Referencia" />
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="telefono" HeaderText="Telefono" />
                        <asp:BoundField DataField="correo" HeaderText="Correo" />
                        <asp:BoundField DataField="direccion" HeaderText="Direccion" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="BTN_Editar" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" CommandArgument='<%#Eval("id")%>' OnClick="BTN_Editar_Click" Text="Editar " />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="BT_Eliminar" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White"  CommandArgument='<%#Eval("id")%>' OnClick="BT_Eliminar_Click" Text="Eliminar" />
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
                <asp:ObjectDataSource ID="OBS_Proveedor" runat="server" SelectMethod="obtenerProveedorAdmin" TypeName="DBLogica.DLProveedor">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TB_Buscar" DefaultValue="-1" Name="nombre" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Button ID="BTN_Agregar" runat="server" OnClick="BTN_Agregar_Click" Text="Agregar proveedor" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                &nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style28" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <h2>
                    <asp:Label ID="L_TituloF" runat="server" Text="Proveedores Ferronet"></asp:Label>
                </h2>
            </td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style29" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Categorias" runat="server" Text="Categorias: "></asp:Label>
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:DropDownList ID="DDL_Catego" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="1">Tornilleria</asp:ListItem>
                    <asp:ListItem Value="2">Pegamentos</asp:ListItem>
                    <asp:ListItem Value="3">Electricidad</asp:ListItem>
                    <asp:ListItem Value="4">Elementos de proteccion personal</asp:ListItem>
                    <asp:ListItem Value="5">Elementos de pintura</asp:ListItem>
                    <asp:ListItem Value="6">Herramienta</asp:ListItem>
                    <asp:ListItem Value="7">Plomeria</asp:ListItem>
                    <asp:ListItem Value="8">Otros</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <asp:GridView ID="GV_Ferronet" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ODS_Ferronet" ForeColor="#333333" GridLines="None" Width="641px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
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
                <asp:ObjectDataSource ID="ODS_Ferronet" runat="server" SelectMethod="ProveedoresF" TypeName="wsFerro">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DDL_Catego" DefaultValue="1" Name="es" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

