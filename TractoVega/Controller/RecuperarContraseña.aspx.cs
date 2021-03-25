using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;
using DBUtilitarios;

public partial class View_Visitante_RecuperarContraseña : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 27;

        DLControles dato = new DLControles();

        Hashtable compIdioma = dato.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            L_Digite.Text = compIdioma["L_Digite"].ToString();
            L_Repita.Text = compIdioma["L_Repita"].ToString();
            REV_Digite.ErrorMessage = compIdioma["REV_Digite"].ToString();
            REV_Repita.ErrorMessage = compIdioma["REV_Repita"].ToString();
            CV_Compare.ErrorMessage = compIdioma["CV_Compare"].ToString();
            BTN_Cambiar.Text = compIdioma["BTN_Cambiar"].ToString();
        }
        catch
        {

        }


        DLTokenRecuperacionUsuario recuperar = new DLTokenRecuperacionUsuario();
        DUConfirmarToken datos = recuperar.ValidarUsuarioToken(Request.QueryString[0].ToString());
        try
        {
            String validar = datos.Mensaje; 
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('"+datos.Mensaje+"');window.location=\""+datos.Url+"\"</script>");

        }
        catch
        {
            Session["user_id"] = datos.Id;
        }

    }

    protected void BTN_Cambiar_Click(object sender, EventArgs e)
    {
        DUConexion eUser = new DUConexion();
        DLTokenRecuperacionUsuario recuperar = new DLTokenRecuperacionUsuario();
        eUser.UserId = int.Parse(Session["user_id"].ToString());
        eUser.Clave = TB_Contrasena.Text;
        recuperar.ActulizarClave(eUser);
        this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('Su Contraseña ha sido actualizada.');window.location=\"Login_Visitante.aspx\"</script>");


    }
}