<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Reporte_Pedido.aspx.cs" 
    Inherits="View_Usuario_Reporte_Ventas" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1330px;
        }
        .auto-style2 {
            width: 960px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 10%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" >
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="BTN_Finalizar" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" Text="Finalizar" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <CR:CrystalReportViewer ID="CRV_Pedido" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="50px" ReportSourceID="CRS_Pedido" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="350px"  />
                        <CR:CrystalReportSource ID="CRS_Pedido" runat="server">
                            <Report FileName="~/Reportes/Reporte_Pedido.rpt">
                            </Report>
                        </CR:CrystalReportSource>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
