using DBLogica;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Inicio_Sesion_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Int32 formulario = 37;

            DLControles datos = new DLControles();

            Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
            try
            {
                Session["compIdioma"] = compIdioma;

                L_Titulo.Text = compIdioma["L_Titulo"].ToString();

                GV_Config.Columns[0].HeaderText = compIdioma["GV_Config_Codigo"].ToString();
                GV_Config.Columns[1].HeaderText = compIdioma["GV_Config_Nombre"].ToString();
                GV_Config.Columns[2].HeaderText = compIdioma["GV_Config_Valor"].ToString();
            }
            catch
            {


            }
        }
        catch
        {

        }
    }
}