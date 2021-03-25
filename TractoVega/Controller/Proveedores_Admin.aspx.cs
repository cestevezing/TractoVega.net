using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;

public partial class View_Admin_Proveedores_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 26;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            L_Referencia.Text = compIdioma["L_Referencia"].ToString();
            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            REV_Buscar.ErrorMessage = compIdioma["REV_Buscar"].ToString();
            BTN_Agregar.Text = compIdioma["BTN_Agregar"].ToString();

            GV_Proveedores.Columns[0].HeaderText = compIdioma["GV_Proveedores_Referencia"].ToString();
            GV_Proveedores.Columns[1].HeaderText = compIdioma["GV_Proveedores_Nombre"].ToString();
            GV_Proveedores.Columns[2].HeaderText = compIdioma["GV_Proveedores_Telefono"].ToString();
            GV_Proveedores.Columns[3].HeaderText = compIdioma["GV_Proveedores_Correo"].ToString();
            GV_Proveedores.Columns[4].HeaderText = compIdioma["GV_Proveedores_Direccion"].ToString();

            GV_Ferronet.Columns[0].HeaderText = compIdioma["GV_Ferronet_Codigo"].ToString();
            GV_Ferronet.Columns[1].HeaderText = compIdioma["GV_Ferronet_Nombre"].ToString();
            GV_Ferronet.Columns[2].HeaderText = compIdioma["GV_Ferronet_Correo"].ToString();
            GV_Ferronet.Columns[3].HeaderText = compIdioma["GV_Ferronet_Telefono"].ToString();
            GV_Ferronet.Columns[4].HeaderText = compIdioma["GV_Ferronet_Categoria"].ToString();

            L_TituloF.Text = compIdioma["L_TituloF"].ToString();
            L_Categorias.Text = compIdioma["L_Categorias"].ToString();
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
        Session["Proveedor_M"] = int.Parse(editar.CommandArgument.ToString());
        Response.Redirect("~/View/Modificar_Proveedor_Admin.aspx");

    }

    protected void BT_Eliminar_Click(object sender, EventArgs e)
    {
        Button editar = (Button)sender;
        DLProveedor datos = new DLProveedor();

        datos.eliminarProveedor(int.Parse(editar.CommandArgument.ToString()),Session.SessionID);
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Se elimino categoria.')", true);

        GV_Proveedores.DataBind();
    }

    protected void BTN_Agregar_Click(object sender, EventArgs e)
    {
        Session["Accion"] = null;
        Response.Redirect("~/View/Modificar_Proveedor_Admin.aspx");
    }

    protected void GV_Proveedores_RowDataBound(object sender, GridViewRowEventArgs e)
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