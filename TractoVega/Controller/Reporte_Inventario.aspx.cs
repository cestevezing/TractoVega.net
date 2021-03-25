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

public partial class View_Admin_Reporte_Inventario : System.Web.UI.Page
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
            DLProducto repos = new DLProducto();
            List<DUVistaProductos> reporte = repos.ObtenerInformeInventario();
            CRS_Inventario.ReportDocument.SetDataSource(reporte);
            CRV_Inventario.ReportSource = CRS_Inventario;
        }
        catch (Exception)
        {

            throw;
        }
    }

    

    protected void BTN_Finalizar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/View/Inventario_Admin.aspx");

    }
}