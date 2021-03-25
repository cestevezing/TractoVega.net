using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;

public partial class View_Visitante_Empresa_Visitante : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 4;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            L_Mision.Text = compIdioma["L_Mision"].ToString();
            L_Mision_P.Text = compIdioma["L_Mision_P"].ToString();
            L_Vision.Text = compIdioma["L_Vision"].ToString();
            L_Vision_P.Text = compIdioma["L_Vision_P"].ToString();
        }
        catch
        {

        }
    }
}