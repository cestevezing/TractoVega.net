using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;

public partial class View_Admin_Inventario_Admin : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 11;

        DLControles datos = new DLControles();

        try
        {
            Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
            Session["compIdioma"] = compIdioma;

            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            L_Categoria.Text = compIdioma["L_Categoria"].ToString();
            L_Digite.Text = compIdioma["L_Digite"].ToString();
            REV_Buscar.ErrorMessage = compIdioma["REV_Buscar"].ToString();
            BTN_Agregar.Text = compIdioma["BTN_Agregar"].ToString();
            GV_Productos.Columns[0].HeaderText = compIdioma["GV_Productos_Referencia"].ToString();
            GV_Productos.Columns[1].HeaderText = compIdioma["GV_Productos_Nombre"].ToString();
            GV_Productos.Columns[2].HeaderText = compIdioma["GV_Productos_Precio"].ToString();
            GV_Productos.Columns[3].HeaderText = compIdioma["GV_Productos_Descripcion"].ToString();
            GV_Productos.Columns[4].HeaderText = compIdioma["GV_Productos_Foto"].ToString();
            GV_Productos.Columns[5].HeaderText = compIdioma["GV_Productos_Ficha"].ToString();
            GV_Productos.Columns[6].HeaderText = compIdioma["GV_Productos_Proveedor"].ToString();
            GV_Productos.Columns[7].HeaderText = compIdioma["GV_Productos_Categoria"].ToString();
            GV_Productos.Columns[8].HeaderText = compIdioma["GV_Productos_Cantidad"].ToString();
            GV_Productos.Columns[9].HeaderText = compIdioma["GV_Productos_CantidadMin"].ToString();

            GV_Agotado.Columns[0].HeaderText = compIdioma["GV_Productos_Referencia"].ToString();
            GV_Agotado.Columns[1].HeaderText = compIdioma["GV_Productos_Nombre"].ToString();
            GV_Agotado.Columns[2].HeaderText = compIdioma["GV_Productos_Precio"].ToString();
            GV_Agotado.Columns[3].HeaderText = compIdioma["GV_Productos_Descripcion"].ToString();
            GV_Agotado.Columns[4].HeaderText = compIdioma["GV_Productos_Foto"].ToString();
            GV_Agotado.Columns[5].HeaderText = compIdioma["GV_Productos_Ficha"].ToString();
            GV_Agotado.Columns[6].HeaderText = compIdioma["GV_Productos_Proveedor"].ToString();
            GV_Agotado.Columns[7].HeaderText = compIdioma["GV_Productos_Categoria"].ToString();
            GV_Agotado.Columns[8].HeaderText = compIdioma["GV_Productos_Cantidad"].ToString();
            GV_Agotado.Columns[9].HeaderText = compIdioma["GV_Productos_CantidadMin"].ToString();

            L_Agotarse.Text = compIdioma["L_Agotarse"].ToString();
            BTN_Reporte.Text = compIdioma["BTN_Reporte"].ToString();
        }
        catch
        {

        }
    }


    protected void BTN_Editar_Click(object sender, EventArgs e)
    {
        Button editar = (Button)sender;
        editar.CommandArgument.ToString();
        Session["Accion"] = 1;
        Session["Producto_M"] = int.Parse(editar.CommandArgument.ToString());
        Response.Redirect("~/View/Modificar_Inventario_Admin.aspx");
   
    }

    protected void BTN_Eliminar_Click(object sender, EventArgs e)
    {
        Button eliminar = (Button)sender;
        DLProducto datos = new DLProducto();
        datos.eliminarProducto(int.Parse(eliminar.CommandArgument.ToString()),Session.SessionID);

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('se elimino correctamente')", true);
        GV_Productos.DataBind();

    }

    protected void BTN_Agregar_Click(object sender, EventArgs e)
    {
        Session["Accion"] = 2;
        Response.Redirect("~/View/Modificar_Inventario_Admin.aspx");
    }

    protected void BTN_Reporte_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/View/Reporte_Inventario.aspx");
    }
    protected void GV_Productos_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            ((Button)e.Row.FindControl("BTN_Editar")).Text = ((Hashtable)Session["compIdioma"])["BTN_Editar"].ToString();

        }
        catch
        {
        }
        try
        {
            ((Button)e.Row.FindControl("BTN_Eliminar")).Text = ((Hashtable)Session["compIdioma"])["BTN_Eliminar"].ToString();

        }
        catch
        {
        }

    }



}