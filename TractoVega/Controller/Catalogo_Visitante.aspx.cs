using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;

public partial class View_Visitante_Catalogo_Visitante : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 2;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {

            Session["compIdioma"] = compIdioma;
            L_Categoria.Text = compIdioma["L_Categoria"].ToString();
            L_Ingrese.Text = compIdioma["L_Ingrese"].ToString();
            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            GV_Productos.Columns[0].HeaderText = compIdioma["GV_Productos_Foto"].ToString();
            GV_Productos.Columns[1].HeaderText = compIdioma["GV_Productos_Referencia"].ToString();
            GV_Productos.Columns[2].HeaderText = compIdioma["GV_Productos_Nombre"].ToString();
            GV_Productos.Columns[3].HeaderText = compIdioma["GV_Productos_Descripcion"].ToString();
            GV_Productos.Columns[4].HeaderText = compIdioma["GV_Productos_Precio"].ToString();

            REV_Nombre.ErrorMessage = compIdioma["REV_Nombre"].ToString();

        }
        catch
        {

        }
    }
    
    protected void GV_Productos_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["idProducto"] = GV_Productos.SelectedRow.Cells[1].Text.ToString();

        Response.Redirect("~/View/Producto_Visitante.aspx");
    }

    protected void GV_Productos_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            ((LinkButton)e.Row.FindControl("LB_Detalles")).Text = ((Hashtable)Session["compIdioma"])["GV_Productos_Detalles"].ToString();


        }
        catch
        {


        }

    }
}