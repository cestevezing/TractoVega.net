using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;
using System.Collections;
using DBUtilitarios;

public partial class View_Visitante_Registro_Visitante : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 28;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {

            Session["compIdioma"] = compIdioma;

            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            L_Nombre.Text = compIdioma["L_Nombre"].ToString();
            L_Correo.Text = compIdioma["L_Correo"].ToString();
            L_User.Text = compIdioma["L_User"].ToString();
            L_Clave.Text = compIdioma["L_Clave"].ToString();
            L_Direccion.Text = compIdioma["L_Direccion"].ToString();
            L_Telefono.Text = compIdioma["L_Telefono"].ToString();
            L_Tarjeta.Text = compIdioma["L_Tarjeta"].ToString();

            REV_Nombre.ErrorMessage = compIdioma["REV_Nombre"].ToString();
            REV_Correo.ErrorMessage = compIdioma["REV_Correo"].ToString();
            REV_User.ErrorMessage = compIdioma["REV_User"].ToString();
            REV_Clave.ErrorMessage = compIdioma["REV_Clave"].ToString();
            REV_Direccion.ErrorMessage = compIdioma["REV_Direccion"].ToString();
            REV_Telefono.ErrorMessage = compIdioma["REV_Telefono"].ToString();
            REV_Tarjeta.ErrorMessage = compIdioma["REV_Tarjeta"].ToString();

            BTN_Registro.Text = compIdioma["BTN_Registro"].ToString();
        }
        catch
        {

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DUUsuario user = new DUUsuario
        {
            Nombre = TB_Nombre.Text.ToString(),
            Direccion = TB_Direccion.Text.ToString(),
            Telefono = TB_Telefono.Text.ToString(),
            Correo = TB_Correo.Text.ToString(),
            UserName = TB_UserName.Text.ToString(),
            Clave = TB_Contraseña.Text.ToString(),
            Rol = 1,
            Estado = 1,
            Session = Session.SessionID,
            Credito = double.Parse(TB_Tarjeta.Text.ToString()),
            LastModifiend = DateTime.Now
        };

        DLUsuario regis = new DLUsuario();
        DUMensajes mensajes = regis.agregarUsuario(user);

                
        ClientScriptManager cm = this.ClientScript;
        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('"+mensajes.Mensaje+"');window.location=\""+mensajes.Url+"\"</script>");
        
    }
}