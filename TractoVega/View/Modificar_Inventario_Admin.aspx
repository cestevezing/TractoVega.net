<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP_Admin.master" AutoEventWireup="true" 
    CodeFile="~/Controller/Modificar_Inventario_Admin.aspx.cs" Inherits="View_Admin_Modificar_Inventario_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            width: 25%;
        }
        .auto-style20 {
            width: 25%;
        }
        .auto-style22 {
            width: 25%;
            text-align: right;
        }
        .auto-style23 {
            width: 25%;
            height: 23px;
        }
        .auto-style24 {
            width: 25%;
            height: 23px;
        }
        .auto-style25 {
            width: 25%;
            height: 24px;
        }
        .auto-style26 {
            width: 25%;
            height: 80px;
        }
        .auto-style27 {
            width: 25%;
            height: 21px;
        }
        .auto-style28 {
            width: 25%;
            height: 30px;
        }
        .auto-style29 {
            height: 30px;
        }
        .auto-style30 {
            width: 25%;
            height: 25px;
        }
        .auto-style31 {
            text-align: center;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style31" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <strong>
                <asp:Label ID="L_Accion" runat="server"></asp:Label>
                </strong>
            </td>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Referencia" runat="server" Text="Referencia"></asp:Label>
            </td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:TextBox ID="TB_Referencia" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        </tr>
        <tr>
            <td class="auto-style28"></td>
            <td class="auto-style28" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Nombre" runat="server" Text="Nombre:"></asp:Label>
            </td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2" class="auto-style29">
                <asp:TextBox ID="TB_Nombre" runat="server" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="[a-zA-Z1-9-_./ ]*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Precio" runat="server" Text="Precio:"></asp:Label>
            </td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <asp:TextBox ID="TB_Precio" runat="server" MaxLength="7"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Precio" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Precio" runat="server" ControlToValidate="TB_Precio" ErrorMessage="Digite solo numeros" ForeColor="#FF6600" ValidationExpression="\d*\.?\d*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Descripcion" runat="server" Text="Descripcion:"></asp:Label>
            </td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <asp:TextBox ID="TB_Descripcion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_Descripcion" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Descripcion" runat="server" ControlToValidate="TB_Descripcion" ErrorMessage="Caracteres no validos" ForeColor="#FF6600" ValidationExpression="[a-zA-Z1-9-_./ ]*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Foto" runat="server" Text="Foto:"></asp:Label>
            </td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Image ID="IMG_Foto" runat="server" Width="60px" />
                <br />
                <asp:FileUpload ID="FU_Foto" runat="server" />
            </td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Ficha" runat="server" Text="Ficha Tecnica:"></asp:Label>
            </td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Image ID="IMG_Ficha" runat="server" Width="60px" />
                <br />
                <asp:FileUpload ID="FU_Ficha" runat="server" />
            </td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Proveedor" runat="server" Text="Proveedor:"></asp:Label>
            </td>
            <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:DropDownList ID="DDL_Proveedor" runat="server" DataSourceID="OBS_Proveedor" DataTextField="nombre" DataValueField="id" Width="169px">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="OBS_Proveedor" runat="server" SelectMethod="obtenerProveedores" TypeName="DBLogica.DLProveedor"></asp:ObjectDataSource>
                <asp:RangeValidator ID="RV_Proveedor" runat="server" ControlToValidate="DDL_Proveedor" ErrorMessage="Seleccione uno" ForeColor="#FF6600" MaximumValue="1000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </td>
            <td class="auto-style26" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Categoria" runat="server" Text="Categoria:"></asp:Label>
            </td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:DropDownList ID="DDL_Categoria" runat="server" DataSourceID="ODS_Categorias" DataTextField="nombre" DataValueField="id" Width="169px">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ODS_Categorias" runat="server" SelectMethod="categoriasDDL" TypeName="DAOData.daoCategoria"></asp:ObjectDataSource>
                <asp:RangeValidator ID="RV_Categoria" runat="server" ControlToValidate="DDL_Categoria" ErrorMessage="Seleccione uno" ForeColor="#FF6600" MaximumValue="1000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style24" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style23" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style27" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_Cantidad" runat="server" Text="Cantidad:"></asp:Label>
            </td>
            <td class="auto-style10" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <asp:TextBox ID="TB_Cantidad" runat="server" MaxLength="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Cantidad" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Cantidad" runat="server" ControlToValidate="TB_Cantidad" ErrorMessage="Digite solo numeros" ForeColor="#FF6600" ValidationExpression="\d+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Label ID="L_CantidadMin" runat="server" Text="Cantidad Minima:"></asp:Label>
            </td>
            <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" colspan="2">
                <asp:TextBox ID="TB_CantidadMin" runat="server" MaxLength="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_CantidadMin" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_CantidadMin" runat="server" ControlToValidate="TB_CantidadMin" ErrorMessage="Digite solo numeros" ForeColor="#FF6600" ValidationExpression="\d+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
            <td class="auto-style30" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style22" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Button ID="BTN_Guardar" runat="server" Text="Guardar" OnClick="BTN_Guardar_Click" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" style="height: 26px" />
                <ajaxToolkit:ConfirmButtonExtender ID="BTN_Guardar_ConfirmButtonExtender" runat="server" ConfirmText="" TargetControlID="BTN_Guardar" />
            </td>
            <td class="auto-style17" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
            <td class="auto-style20" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

