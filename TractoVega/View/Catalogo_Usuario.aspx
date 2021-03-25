<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Usuario.master" AutoEventWireup="true"
    CodeFile="~/Controller/Catalogo_Usuario.aspx.cs" Inherits="View_Usuario_Catalogo_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style19 {
            width: 100%;
            
        }
        .auto-style23 {
            height: 59px;
        }
        .auto-style24 {
            text-align: left;
        }
        .auto-style26 {
            width: 25%;
            text-align: right;
            height: 59px;
        }
        .auto-style27 {
            width: 25%;
            text-align: center;
            height: 25px;
        }
        .auto-style29 {
            height: 25px;
        }
        .auto-style30 {
            width: 25%;
            height: 25px;
        }
        .auto-style31 {
            width: 25%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style19">
        <tr>
            <td class="auto-style27" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td class="auto-style12" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <h3 class="auto-style9">
                    <asp:Label ID="L_Titulo" runat="server" Text="Productos" ForeColor="#FF6600"></asp:Label>
                </h3>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style31" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style31" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <div class="auto-style24">
                    <asp:Label ID="L_Categoria" runat="server" Text="Categoria:"></asp:Label>
                    &nbsp;&nbsp;
                <asp:DropDownList ID="DDL_Categoria" runat="server" AutoPostBack="True" DataSourceID="OBS_Categoria" DataTextField="nombre" DataValueField="id" CausesValidation="True" ValidationGroup="a" >
                </asp:DropDownList>
                    <ajaxToolkit:ListSearchExtender ID="DDL_Categoria_ListSearchExtender" runat="server" PromptText="" TargetControlID="DDL_Categoria">
                    </ajaxToolkit:ListSearchExtender>
                </div>
                <asp:ObjectDataSource ID="OBS_Categoria" runat="server" SelectMethod="categoriasDDL" TypeName="DBLogica.DLCategoria"></asp:ObjectDataSource>
            </td>
            <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                &nbsp;<asp:Label ID="L_Ingrese" runat="server" Text="Ingrese el nombre:"></asp:Label>
            </td>
            <td class="auto-style23" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <br />
                <asp:TextBox ID="TB_Buscar" runat="server" AutoPostBack="True" CausesValidation="True" ValidationGroup="a" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Buscar" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="[a-zA-Z0-9\.\-\#\° ]*" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style31" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style31" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <div class="auto-style9">
                <asp:GridView ID="GV_Productos" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GV_Productos_SelectedIndexChanged" CellSpacing="2" DataSourceID="OBS_Catalogo" AutoGenerateColumns="False" PageSize="7" OnRowDataBound="GV_Productos_RowDataBound" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Foto">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Foto") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Foto") %>' Width="60px" />
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
                </div>
                <asp:ObjectDataSource ID="OBS_Catalogo" runat="server" SelectMethod="productosUsuario" TypeName="DBLogica.DLProducto">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DDL_Categoria" Name="categoria" PropertyName="SelectedValue" Type="Int32" DefaultValue="0" />
                        <asp:ControlParameter ControlID="TB_Buscar" Name="nombre" PropertyName="Text" Type="String" DefaultValue="-1" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style31" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style31" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

