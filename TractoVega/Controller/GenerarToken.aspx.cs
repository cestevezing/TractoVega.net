using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using DBLogica;

public partial class View_Visitante_GenerarToken : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 7;
        
        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            L_Digite.Text = compIdioma["L_Digite"].ToString();
            BTN_Recuperar.Text = compIdioma["BTN_Recuperar"].ToString();
            REV_User.ErrorMessage = compIdioma["REV_User"].ToString();
        }
        catch
        {

        }
    }

    protected void BTN_Recuperar_Click(object sender, EventArgs e)
    {
        DLTokenRecuperacionUsuario recuperar = new DLTokenRecuperacionUsuario();
        L_Mensaje.Text = recuperar.GeneraToken(TB_UserName.Text);

    }

    
}