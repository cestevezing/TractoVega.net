using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;


public partial class View_Admin_Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 3;


        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            L_Digite.Text = compIdioma["L_Digite"].ToString();
            REV_Buscar.ErrorMessage = compIdioma["REV_Buscar"].ToString();
            BTN_Agregar.Text = compIdioma["BTN_Agregar"].ToString();

            GV_Categorias.Columns[0].HeaderText = compIdioma["GV_Categorias_Referencia"].ToString();
            GV_Categorias.Columns[1].HeaderText = compIdioma["GV_Categorias_Nombre"].ToString();
            GV_Categorias.Columns[2].HeaderText = compIdioma["GV_Categorias_Foto"].ToString();
            GV_Categorias.Columns[3].HeaderText = compIdioma["GV_Categorias_Modificar"].ToString();
            GV_Categorias.Columns[4].HeaderText = compIdioma["GV_Categorias_Eliminar"].ToString();
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
        Session["Categoria_M"] = int.Parse(editar.CommandArgument.ToString());
        Response.Redirect("~/View/Modificar_Categoria_Admin.aspx");

    }

    protected void BTN_Eliminar_Click(object sender, EventArgs e)
    {
        Button editar = (Button)sender;
        DLCategoria eliminar = new DLCategoria();
        eliminar.eliminarCategoria(int.Parse(editar.CommandArgument.ToString()),Session.SessionID);

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Se elimino categoria.')", true);
        GV_Categorias.DataBind();
    }

    protected void BTN_Agregar_Click(object sender, EventArgs e)
    {
        
        Session["Accion"] = null;        
        Response.Redirect("~/View/Modificar_Categoria_Admin.aspx");
    }

    protected void GV_Categorias_RowDataBound(object sender, GridViewRowEventArgs e)
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