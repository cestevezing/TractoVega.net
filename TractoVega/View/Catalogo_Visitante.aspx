<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Visitante.master"
    AutoEventWireup="true" CodeFile="~/Controller/Catalogo_Visitante.aspx.cs" Inherits="View_Visitante_Catalogo_Visitante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 20%;
        }
        .auto-style20 {
            width: 20%;
            height: 23px;
        }
        .auto-style21 {
            width: 20%;
            height: 23px;
            text-align: center;
        }
        .auto-style24 {
            height: 137px;
        }
        .auto-style25 {
            height: 137px;
            text-align: center;
        }
        .auto-style26 {
            height: 23px;
            text-align: left;
        }
        .auto-style28 {
            height: 25px;
        }
        .auto-style29 {
            text-align: left;
        }
        .auto-style30 {
            width: 25%;
            height: 23px;
        }
        .auto-style31 {
            width: 25%;
            height: 23px;
            text-align: right;
        }
        .auto-style32 {
            width: 25%;
            height: 25px;
        }
        .auto-style33 {
            width: 25%;
        }
        .auto-style36 {
            width: 25%;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <h3 class="auto-style29">
                    <asp:Label ID="L_Titulo" runat="server" Text="Productos" ForeColor="#FF6600"></asp:Label>
                </h3>
            </td>
            <td class="auto-style15" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                </td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        </tr>
        <tr>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style15" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                &nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <div class="auto-style29">
                    &nbsp;<asp:Label ID="L_Categoria" runat="server" Text="Categoria:&nbsp;"></asp:Label>
&nbsp;<asp:DropDownList ID="DDL_Categoria" runat="server" AutoPostBack="True" DataSourceID="OBS_Categorias" DataTextField="nombre" DataValueField="id" CausesValidation="True" >
                </asp:DropDownList>
                    <ajaxToolkit:ListSearchExtender ID="DDL_Categoria_ListSearchExtender" runat="server" PromptText="" TargetControlID="DDL_Categoria">
                    </ajaxToolkit:ListSearchExtender>
                </div>
                <asp:ObjectDataSource ID="OBS_Categorias" runat="server" SelectMethod="categoriasDDL" TypeName="DBLogica.DLCategoria"></asp:ObjectDataSource>
            </td>
            <td class="auto-style31" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                &nbsp;<asp:Label ID="L_Ingrese" runat="server" Text="Ingrese el nombre:"></asp:Label>
                <br />
            </td>
            <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <br />
                <asp:TextBox ID="TB_Buscar" runat="server" AutoPostBack="True" CausesValidation="True" MaxLength="100"></asp:TextBox>
                <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Buscar" ErrorMessage="Carateres no validos" ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9\.\-\#\° ]*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style32" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style32" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style32" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" class="auto-style28"></td>
        </tr>
        <tr>
            <td class="auto-style25" colspan="3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:GridView ID="GV_Productos" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="2" AutoGenerateColumns="False" DataSourceID="OBS_Productos" OnSelectedIndexChanged="GV_Productos_SelectedIndexChanged" PageSize="7" OnRowDataBound="GV_Productos_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Foto">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("foto") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("foto") %>' Width="60px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="id" HeaderText="Referencia" />
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="descripcion" HeaderText="Descripcion" />
                        <asp:BoundField DataField="precio" HeaderText="Precio" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LB_Detalles" runat="server" CausesValidation="False" CommandName="Select" Text="Detalles"></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle ForeColor="#FF6600" />
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
                        <asp:ControlParameter ControlID="DDL_Categoria" DefaultValue="0" Name="categoria" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="TB_Buscar" DefaultValue="-1" Name="nombre" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        </tr>
        <tr>
            <td class="auto-style33" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style36" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style36" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

