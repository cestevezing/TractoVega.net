using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;


public partial class View_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 17;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            L_Informacion.Text = compIdioma["L_Informacion"].ToString();
            L_Ventas.Text = compIdioma["L_Ventas"].ToString();
            L_Contacto.Text = compIdioma["L_Contacto"].ToString();
        }
        catch
        {

        }
    }
    
}
