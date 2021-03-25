using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;

public partial class View_Controles_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 35;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {

            Session["compIdioma"] = compIdioma;

            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            L_Formulario.Text = compIdioma["L_Formulario"].ToString();
            L_Idioma.Text = compIdioma["L_Idioma"].ToString();
            GV_Controles.Columns[1].HeaderText = compIdioma["GV_Controles_id"].ToString();
            GV_Controles.Columns[2].HeaderText = compIdioma["GV_Controles_control"].ToString();
            GV_Controles.Columns[3].HeaderText = compIdioma["GV_Controles_valor"].ToString();
            BTN_Agregar.Text = compIdioma["BTN_Agregar"].ToString();

        }
        catch
        {

        }
    }

    protected void BTN_Agregar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/View/Agregar_Idioma_Admin.aspx");
    }

    protected void GV_Controles_RowDataBound(object sender, GridViewRowEventArgs e)
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