using System;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;

public partial class View_PaginaInicio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 8;
        Session["mensajeLogin"] = "";

        DLControles datos = new DLControles();
        Int32 a = int.Parse(Session["idioma"].ToString());
        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, a);
        try
        {

            IMG_Tractor.ImageUrl = compIdioma["IMG_Tractor"].ToString();
        }
        catch
        {

        }

    }

    
}