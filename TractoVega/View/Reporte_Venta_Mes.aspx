<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Reporte_Venta_Mes.aspx.cs" Inherits="View_Admin_Reporte_Venta_Mes" %>

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
            width: 434px;
            text-align: center;
        }
        .auto-style3 {
            width: 10%;
        }
        
        .auto-style4 {
            width: 960px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="BTN_Finalizar" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" Text="Finalizar" OnClick="BTN_Finalizar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <CR:CrystalReportViewer ID="CRV_Ventas" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="50px" ReportSourceID="CRS_Ventas" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="350px" />
                        <CR:CrystalReportSource ID="CRS_Ventas" runat="server">
                            <Report FileName="~/Reportes/Reporte_Ventas.rpt">
                            </Report>
                        </CR:CrystalReportSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
