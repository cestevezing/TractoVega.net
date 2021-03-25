<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Admin.master" AutoEventWireup="true" CodeFile="~/Controller/Idioma_Admin.aspx.cs" Inherits="View_Idioma_Admin" %>

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
        }
    .auto-style21 {
        width: 20%;
        text-align: right;
    }
        .auto-style24 {
            width: 20%;
            height: 25px;
        }
        .auto-style25 {
            height: 25px;
        }
        .auto-style26 {
            width: 25%;
            height: 25px;
        }
        .auto-style27 {
            width: 25%;
            height: 22px;
        }
        .auto-style28 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style28" colspan="3">
                <h2 class="auto-style9">
                    <asp:Label ID="L_Titulo" runat="server" Text="Modificar&nbsp; idioma"></asp:Label>
                </h2>
            </td>
            <td class="auto-style28"></td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td colspan="3">
                <asp:GridView ID="GV_Idiomas" runat="server" AllowPaging="True" CellPadding="4" DataSourceID="ODS_Idioma" ForeColor="#333333" GridLines="None" OnRowDataBound="GV_Idiomas_RowDataBound" AutoGenerateColumns="False">
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
                        <asp:TemplateField HeaderText="nombre">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("nombre") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="terminacion">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("terminacion") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("terminacion") %>'></asp:Label>
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
                <asp:ObjectDataSource ID="ODS_Idioma" runat="server" SelectMethod="obtenerIdiomas" TypeName="DBLogica.DLIdioma" UpdateMethod="actualizarIdioma">
                    <UpdateParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="terminacion" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td colspan="2">
                <h2>
                    <asp:Label ID="L_Agregar" runat="server" Text="Agregar idioma"></asp:Label>
                </h2>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style21">
                <asp:Label ID="L_Nombre" runat="server" Text="Nombre:"></asp:Label>
                <asp:TextBox ID="TB_Nombre" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9" colspan="2">
                <asp:Label ID="L_Terminacion" runat="server" Text="Terminacion:"></asp:Label>
                <asp:TextBox ID="TB_Terminacion" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style21">
                <asp:Button ID="BTN_Agregar" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" Text="Agregar" OnClick="BTN_Agregar_Click" />
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

