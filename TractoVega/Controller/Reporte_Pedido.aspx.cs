using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;
using DBUtilitarios;

public partial class View_Usuario_Reporte_Ventas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 29;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            BTN_Finalizar.Text = compIdioma["BTN_Finalizar"].ToString();
        }
        catch
        {

        }
        try
        {
            DLPedidos repor = new  DLPedidos();
            Int32 id = int.Parse(Session["Pedido"].ToString());


            List<DUVistaReportePedido> reporte = repor.reportePedidos(id);
            CRS_Pedido.ReportDocument.SetDataSource(reporte);
            CRV_Pedido.ReportSource = CRS_Pedido;
        }
        catch (Exception)
        {

            throw;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('Se genero el pedido exitosamente.');window.location=\"Carrito_Usuario.aspx\"</script>");

        
    }
}