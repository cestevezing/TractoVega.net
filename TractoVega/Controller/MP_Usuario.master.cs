using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;

public partial class View_Usuario_MP_Usuario : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 18;
        
        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Menu_Usuario.FindItem("Inicio").Text = compIdioma["M_Inicio"].ToString();
            Menu_Usuario.FindItem("Empresa").Text = compIdioma["M_Empresa"].ToString();
            Menu_Usuario.FindItem("Catalogo").Text = compIdioma["M_Catalogo"].ToString();
            Menu_Usuario.FindItem("Pedidos").Text = compIdioma["M_Pedidos"].ToString();
            Menu_Usuario.FindItem("Carrito").Text = compIdioma["M_Carrito"].ToString();
            Menu_Usuario.FindItem("Perfil").Text = compIdioma["M_Perfil"].ToString();

            BTN_Salir.Text = compIdioma["BTN_Salir"].ToString();

            LB_Plato.Text = compIdioma["LB_Ver"].ToString();
            LB_Tato1.Text = compIdioma["LB_Ver"].ToString();
            LB_Tato2.Text = compIdioma["LB_Ver"].ToString();
        }
        catch
        {

        }
        Response.Cache.SetNoStore();
        
        DLValidaciones validar = new DLValidaciones();
        String rol = Session["rol"].ToString();
        try
        {
            String url = validar.validarRolUsuario(rol);

            Response.Redirect(url);
        }
        catch 
        {

        }
                
        IB_Plato1.ImageUrl = Session["IB_Plato1"].ToString();
        IB_Plato2.ImageUrl = Session["IB_Plato2"].ToString();
        
        
        IB_Tato1.ImageUrl = Session["IB_Tato1"].ToString();
        IB_Tato2.ImageUrl = Session["IB_Tato2"].ToString();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DLAuthentication cerrar = new DLAuthentication();
        string session = Session.SessionID.ToString();

        cerrar.cerrarSession(session, int.Parse(Session["user_id"].ToString()));

        Session["user_id"] = null;
        Session["nombre"] = null;
        Session["rol"] = null;

        Response.Redirect("~/View/Login_Visitante.aspx");
    }

    protected void IB_Tato1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>window.open('http://tattoostudio.gotdns.ch/Vista/Usuario/Galeria.aspx','_blank')</script>");
    }

    protected void LB_Tato1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('http://tattoostudio.gotdns.ch/Vista/Usuario/Galeria.aspx','_blank')</script>");

    }

    protected void IB_Tato2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>window.open('http://tattoostudio.gotdns.ch/Vista/Usuario/Galeria.aspx','_blank')</script>");

    }

    protected void LB_Tato2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('http://tattoostudio.gotdns.ch/Vista/Usuario/Galeria.aspx','_blank')</script>");

    }



    protected void IB_Plato1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>window.open('http://platoweb.ddns.net/View/Inicio.aspx','_blank')</script>");    
    }

    protected void IB_Plato2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>window.open('http://platoweb.ddns.net/View/Inicio.aspx','_blank')</script>");
    }

    protected void LB_Plato_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('http://platoweb.ddns.net/View/Inicio.aspx','_blank')</script>");
    }

    protected void LB_Plato1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('http://platoweb.ddns.net/View/Inicio.aspx','_blank')</script>");
    }
}
