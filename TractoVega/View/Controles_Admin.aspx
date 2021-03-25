<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Admin.master"
    AutoEventWireup="true" CodeFile="~/Controller/Controles_Admin.aspx.cs" Inherits="View_Controles_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            width: 20%;
        }
        .auto-style18 {
            width: 20%;
            height: 23px;
        }
        .auto-style19 {
            width: 20%;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style9" colspan="3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <h3><strong>
                <asp:Label ID="L_Titulo" runat="server" Text="Controles"></asp:Label>
                    </strong></h3>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style18" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Formulario" runat="server" Text="Formulario:"></asp:Label>
            </td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;
                <asp:DropDownList ID="DDL_Formulario" runat="server" DataSourceID="ODS_Formularios" DataTextField="nombre" DataValueField="id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ODS_Formularios" runat="server" SelectMethod="obtenerFormularios" TypeName="DBLogica.DLFormulario"></asp:ObjectDataSource>
            </td>
            <td class="auto-style19" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Idioma" runat="server" Text="Idioma: "></asp:Label>
            </td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;
                <asp:DropDownList ID="DDL_Idioma" runat="server" DataSourceID="ODS_Idioma" DataTextField="nombre" DataValueField="id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ODS_Idioma" runat="server" SelectMethod="obtenerIdiomas" TypeName="DBLogica.DLIdioma"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td colspan="3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:GridView ID="GV_Controles" runat="server" CellPadding="4" DataSourceID="ODS_Controles" ForeColor="#333333" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" OnRowDataBound="GV_Controles_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LB_Editar" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="id">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Text='<%# Bind("id") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="control">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Text='<%# Bind("control") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("control") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="valor">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("texto") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("texto") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#FF6600" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#FF6600" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FF6600" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_Controles" runat="server" SelectMethod="ObtenerControles" TypeName="DBLogica.DLControles" UpdateMethod="actualizarControles">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DDL_Formulario" DefaultValue="0" Name="formulario" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="DDL_Idioma" DefaultValue="0" Name="idioma" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="control" Type="String" />
                        <asp:Parameter Name="texto" Type="String" />
                        <asp:Parameter Name="session" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Button ID="BTN_Agregar" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" Text="Agregar" OnClick="BTN_Agregar_Click" />
            </td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

