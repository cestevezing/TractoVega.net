using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;


public partial class View_Admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 16;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));

        try
        {
            Menu_Admin.FindItem("Inicio").Text = compIdioma["M_Inicio"].ToString();
            Menu_Admin.FindItem("Empresa").Text = compIdioma["M_Empresa"].ToString();
            Menu_Admin.FindItem("Catalogo").Text = compIdioma["M_Catalogo"].ToString();
            Menu_Admin.FindItem("Catalogo/Categorias").Text = compIdioma["M_Categorias"].ToString();
            Menu_Admin.FindItem("Catalogo/Productos").Text = compIdioma["M_Productos"].ToString();
            Menu_Admin.FindItem("Catalogo/Proveedores").Text = compIdioma["M_Proveedores"].ToString();
            Menu_Admin.FindItem("Usuarios").Text = compIdioma["M_Usuarios"].ToString();
            Menu_Admin.FindItem("Usuarios/Usuarios").Text = compIdioma["M_Usuarios"].ToString();
            Menu_Admin.FindItem("Usuarios/Pedidos").Text = compIdioma["M_Pedidos"].ToString();
            Menu_Admin.FindItem("Configuraciones").Text = compIdioma["M_Configuraciones"].ToString();
            Menu_Admin.FindItem("Configuraciones/Idioma").Text = compIdioma["M_Idioma"].ToString();
            Menu_Admin.FindItem("Configuraciones/Idioma/Idiomas").Text = compIdioma["M_Idioma"].ToString();
            Menu_Admin.FindItem("Configuraciones/Idioma/Controles").Text = compIdioma["M_Controles"].ToString();

            Menu_Admin.FindItem("Perfil").Text = compIdioma["M_Perfil"].ToString();
            BTN_Salir.Text = compIdioma["BTN_Salir"].ToString();
        }
        catch
        {

        }
        

        Response.Cache.SetNoStore();

        DLValidaciones validar = new DLValidaciones();
        
        try
        {
            String rol = Session["rol"].ToString();

            String url = validar.validarRolAdmin(rol);

            Response.Redirect(url);
        }
        catch
        {
            
        }
    }

    protected void BTN_Salir_Click(object sender, EventArgs e)
    {
        DLAuthentication cerrar = new DLAuthentication();
        cerrar.cerrarSession(Session.SessionID.ToString(),int.Parse( Session["user_id"].ToString()));

        Session["user_id"] = null;
        Session["nombre"] = null;
        Session["rol"] = null;

        Response.Redirect("~/View/Login_Visitante.aspx");
    }
}
