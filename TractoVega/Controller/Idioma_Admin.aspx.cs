using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;
using DBUtilitarios;

public partial class View_Idioma_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 36;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            L_Agregar.Text = compIdioma["L_Agregar"].ToString();
            L_Nombre.Text = compIdioma["L_Nombre"].ToString();
            L_Terminacion.Text = compIdioma["L_Terminacion"].ToString();

            GV_Idiomas.Columns[1].HeaderText = compIdioma["GV_Controles_Id"].ToString();
            GV_Idiomas.Columns[2].HeaderText = compIdioma["GV_Controles_Nombre"].ToString();
            GV_Idiomas.Columns[3].HeaderText = compIdioma["GV_Controles_Terminacion"].ToString();

            BTN_Agregar.Text = compIdioma["BTN_Agregar"].ToString();
        }
        catch
        {

        }

    }

    protected void BTN_Agregar_Click(object sender, EventArgs e)
    {
        DLIdioma datos = new DLIdioma();
        DUIdioma idioma = new DUIdioma
        {
            Nombre = TB_Nombre.Text,
            Terminacion = TB_Terminacion.Text
        };
        datos.insertarIdioma(idioma,Session.SessionID);
        GV_Idiomas.DataBind();

    }

    protected void GV_Idiomas_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            ((LinkButton)e.Row.FindControl("LB_Editar")).Text = ((Hashtable)Session["compIdioma"])["LB_Editar"].ToString();

        }
        catch
        {
        }

    }
}