using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;

public partial class View_Admin_Inicio_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["mensajeLogin"] = "";

        Int32 formulario = 8;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            IMG_Tractor.ImageUrl = compIdioma["IMG_Tractor"].ToString();
        }
        catch
        {

        }
    }
}