<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Admin.master" AutoEventWireup="true" 
    CodeFile="~/Controller/Categorias_Admin.aspx.cs" Inherits="View_Admin_Default" %>

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
        .auto-style21 {
            width: 20%;
            height: 23px;
        }
        .auto-style22 {
            width: 20%;
            height: 23px;
            text-align: right;
        }
        .auto-style23 {
            width: 20%;
            height: 21px;
            text-align: left;
        }
        .auto-style24 {
            width: 20%;
            height: 38px;
        }
        .auto-style25 {
            height: 38px;
        }
        .auto-style26 {
            width: 20%;
            height: 21px;
        }
        .auto-style27 {
            width: 20%;
            height: 21px;
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
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <h3 class="auto-style9">
                    <asp:Label ID="L_Titulo" runat="server" Text="Categorias"></asp:Label>
                </h3>
            </td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style16" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style27" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Digite" runat="server" Text="Digite el nombre:"></asp:Label>
            </td>
            <td class="auto-style27" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Buscar" runat="server" AutoPostBack="True" CausesValidation="True" MaxLength="6" ></asp:TextBox>
            </td>
            <td class="auto-style23" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:RegularExpressionValidator ID="REV_Buscar" runat="server" ControlToValidate="TB_Buscar" ErrorMessage="Digite solo numeros y letras" ValidationExpression="[a-zA-Z0-9 ]*" ForeColor="#FF6600"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style10" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                &nbsp;</td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                &nbsp;</td>
            <td class="auto-style16" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td colspan="3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <div class="auto-style9">
                <asp:GridView ID="GV_Categorias" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="2" AutoGenerateColumns="False" DataSourceID="OBS_Categorias" OnRowDataBound="GV_Categorias_RowDataBound" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Referencia" />
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                        <asp:TemplateField HeaderText="Foto">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("foto") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("foto") %>' Width="60px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Modificar">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button ID="BTN_Editar" runat="server" OnClick="BTN_Editar_Click" Text="Editar" CommandArgument='<%#Eval("id")%>' BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Eliminar">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button ID="BTN_Eliminar" runat="server"  Text="Eliminar" CommandArgument='<%#Eval("id")%>' OnClick="BTN_Eliminar_Click" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
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
                <asp:ObjectDataSource ID="OBS_Categorias" runat="server" SelectMethod="obtenerCategorias" TypeName="DBLogica.DLCategoria">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TB_Buscar" DefaultValue="0" Name="id" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">
                <asp:Button ID="BTN_Agregar" runat="server" OnClick="BTN_Agregar_Click" Text="Nueva categoria" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" />
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

