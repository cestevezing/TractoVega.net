using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;

public partial class View_Usuario_Pedidos_Usuario : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 20;
        
        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;
            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            L_Estado.Text = compIdioma["L_Estado"].ToString();

            GV_Pedidos.Columns[1].HeaderText = compIdioma["GV_Pedidos_Numero"].ToString();
            GV_Pedidos.Columns[2].HeaderText = compIdioma["GV_Pedidos_Pedido"].ToString();
            GV_Pedidos.Columns[3].HeaderText = compIdioma["GV_Pedidos_Entrega"].ToString();

            L_Detalles.Text = compIdioma["L_Detalles"].ToString();

            GV_Detalles.Columns[0].HeaderText = compIdioma["GV_Detalles_Referencia"].ToString();
            GV_Detalles.Columns[1].HeaderText = compIdioma["GV_Detalles_Nombre"].ToString();
            GV_Detalles.Columns[2].HeaderText = compIdioma["GV_Detalles_Precio"].ToString();
            GV_Detalles.Columns[3].HeaderText = compIdioma["GV_Detalles_Cantidad"].ToString();
            GV_Detalles.Columns[4].HeaderText = compIdioma["GV_Detalles_Total"].ToString();
        }
        catch
        {

        }
        L_Detalles.Visible = false;
        GV_Detalles.Visible = false;
    }

    
    protected void GV_Pedidos_SelectedIndexChanged(object sender, EventArgs e)
    {
        L_Detalles.Visible = true;
        int a;
        a = int.Parse(GV_Pedidos.SelectedRow.Cells[1].Text.ToString());

        DLPedidoProducto dL = new DLPedidoProducto();
        GV_Detalles.DataSource = dL.detallesPedidos(a);
        GV_Detalles.DataBind();
        GV_Detalles.Visible = true;
    }

    protected void GV_Pedidos_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            ((LinkButton)e.Row.FindControl("LB_Detalles")).Text = ((Hashtable)Session["compIdioma"])["GV_Pedidos_Detalles"].ToString();


        }
        catch 
        {


        }

    }
}