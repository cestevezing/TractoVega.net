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

public partial class View_Usuario_Perfil_Usuario : System.Web.UI.Page
{
    DUUsuario perfil = new DUUsuario();
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 22;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            L_Nombre.Text = compIdioma["L_Nombre"].ToString();
            L_Correo.Text = compIdioma["L_Correo"].ToString();
            L_User.Text = compIdioma["L_User"].ToString();
            L_Clave.Text = compIdioma["L_Clave"].ToString();
            L_Direccion.Text = compIdioma["L_Direccion"].ToString();
            L_Telefono.Text = compIdioma["L_Telefono"].ToString();
            L_Tarjeta.Text = compIdioma["L_Tarjeta"].ToString();

            REV_Nombre.ErrorMessage = compIdioma["REV_Nombre"].ToString();
            REV_Correo.ErrorMessage = compIdioma["REV_Correo"].ToString();
            REV_Clave.ErrorMessage = compIdioma["REV_Clave"].ToString();
            REV_Direccion.ErrorMessage = compIdioma["REV_Direccion"].ToString();
            REV_Telefono.ErrorMessage = compIdioma["REV_Telefono"].ToString();
            REV_Tarjeta.ErrorMessage = compIdioma["L_Tarjeta"].ToString();

            BTN_Guardar.Text = compIdioma["BTN_Guardar"].ToString();
            L_Perfil.Text = compIdioma["L_Perfil"].ToString();

        }
        catch
        {

        }
        try
        {
            DLValidaciones validar = new DLValidaciones();

            Int32 valor = int.Parse(validar.ValidarPostBack(IsPostBack));

            DLUsuario usuario = new DLUsuario();
            try
            {
                perfil = usuario.perfilUsuario(int.Parse(Session["user_id"].ToString())).First();
            }
            catch
            {
                Response.Redirect("~/View/Login_Visitante.aspx");
            }

            TB_Nombre.Text = perfil.Nombre;
            TB_Correo.Text = perfil.Correo;
            TB_UserName.Text = perfil.UserName;
            TB_UserName.Enabled = false;
            TB_Contraseña.Text = perfil.Clave;
            TB_Direccion.Text = perfil.Direccion;
            TB_Telefono.Text = perfil.Telefono;
            TB_Credito.Text = "" + perfil.Credito;
        }
        catch
        {

        }
    }

    protected void BTN_Guardar_Click(object sender, EventArgs e)
    {
        perfil.Id = int.Parse(Session["user_id"].ToString());
        perfil.Nombre = TB_Nombre.Text;
        perfil.Correo = TB_Correo.Text;
        perfil.UserName = TB_UserName.Text;
        perfil.Clave = TB_Contraseña.Text;
        perfil.Direccion = TB_Direccion.Text;
        perfil.Telefono = TB_Telefono.Text;
        perfil.Credito = double.Parse(TB_Credito.Text);
        perfil.Session = Session.SessionID;
        perfil.LastModifiend = DateTime.Now;

        DLUsuario dao = new DLUsuario();
        dao.actualizarUsuario(perfil);

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Cambios realizados.')", true);
    }
}