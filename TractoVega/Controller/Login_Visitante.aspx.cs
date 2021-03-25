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

public partial class View_Visitante_Login_Visitante : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        L_Error.Text = Session["mensajeLogin"].ToString();
        Int32 formulario = 12;
        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            ((Label)L_Autenticate.FindControl("L_Titulo")).Text = compIdioma["L_Titulo"].ToString();
            ((Label)L_Autenticate.FindControl("UserNameLabel")).Text = compIdioma["UserNameLabel"].ToString();
            ((Label)L_Autenticate.FindControl("PasswordLabel")).Text = compIdioma["PasswordLabel"].ToString();
            ((CheckBox)L_Autenticate.FindControl("RememberMe")).Text = compIdioma["RememberMe"].ToString();
            ((LinkButton)L_Autenticate.FindControl("LB_Recuperar")).Text = compIdioma["LB_Recuperar"].ToString();
            ((Button)L_Autenticate.FindControl("LoginButton")).Text = compIdioma["LoginButton"].ToString();
        }
        catch
        {

        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("GenerarToken.aspx");
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {

        DULoggin loggin = new DULoggin();
        DLUsuario inicio = new DLUsuario();

        loggin.UserName = L_Autenticate.UserName.ToString();
        loggin.Clave = L_Autenticate.Password.ToString();
        loggin.Session = Session.SessionID;
        loggin = inicio.IniciarSesion(loggin);

        Session["nombre"] = loggin.Nombre;
        Session["user_id"] = loggin.UserId;
        Session["rol"] = loggin.Rol;

        Session["mensajeLogin"] = loggin.Mensaje;

        Response.Redirect(loggin.Url);
        
    }
}