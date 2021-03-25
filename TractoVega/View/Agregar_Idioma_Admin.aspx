<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Admin.master" AutoEventWireup="true" 
    CodeFile="~/Controller/Agregar_Idioma_Admin.aspx.cs" Inherits="View_Agregar_Idioma_Admin" %>

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
            height: 23px;
            text-align: center;
        }
        .auto-style23 {
            width: 20%;
            text-align: right;
        }
        .auto-style24 {
            width: 20%;
            height: 21px;
        }
        .auto-style25 {
            width: 20%;
            height: 22px;
        }
        .auto-style26 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22" colspan="3">
                <strong>
                <asp:Label ID="L_Titulo" runat="server" Text="Agregar idioma a  controles"></asp:Label>
                </strong>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style23">
                <asp:Label ID="L_Formulario" runat="server" Text="Formulario:"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:DropDownList ID="DDL_Formulario" runat="server" AutoPostBack="True" DataSourceID="ODS_Formularios" DataTextField="nombre" DataValueField="id">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ODS_Formularios" runat="server" SelectMethod="obtenerFormularios" TypeName="DBLogica.DLFormulario"></asp:ObjectDataSource>
            </td>
            <td class="auto-style23">
                <asp:Label ID="L_Idioma" runat="server" Text="Idioma:"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:DropDownList ID="DDL_Idioma" runat="server" DataSourceID="ODS_Idioma" DataTextField="nombre" DataValueField="id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ODS_Idioma" runat="server" SelectMethod="obtenerIdiomas" TypeName="DBLogica.DLIdioma"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style10" colspan="3">
                <asp:GridView ID="GV_Controles" runat="server" DataSourceID="ODS_Controles" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GV_Controles_RowDataBound" AllowPaging="True" BackColor="#FF6600">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="control" HeaderText="Control" />
                        <asp:TemplateField HeaderText="Idioma">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="L_Idioma" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Formulario">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="L_Formu" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Texto">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="TB_Texto" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_Texto" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
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
                <asp:ObjectDataSource ID="ODS_Controles" runat="server" SelectMethod="mostrarControles" TypeName="Logica.LIdioma">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DDL_Formulario" DefaultValue="1" Name="formulario" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="DDL_Idioma" DefaultValue="1" Name="idioma" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21">
                <asp:Label ID="L_Mensaje" runat="server" ForeColor="#FF6600"></asp:Label>
                <br />
            </td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21">
                <asp:Button ID="BTN_Agregar" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" OnClick="BTN_Agregar_Click" Text="Agregar" />
            </td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

