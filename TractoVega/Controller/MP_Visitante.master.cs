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

public partial class View_Visitante_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 19;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Menu_Visitante.FindItem("Inicio").Text = compIdioma["M_Inicio"].ToString();
            Menu_Visitante.FindItem("Empresa").Text = compIdioma["M_Empresa"].ToString();
            Menu_Visitante.FindItem("Catalogo").Text = compIdioma["M_Catalogo"].ToString();
            Menu_Visitante.FindItem("IniciarSesion").Text = compIdioma["M_IniciarSesion"].ToString();
            Menu_Visitante.FindItem("IniciarSesion/Sesion").Text = compIdioma["M_Sesion"].ToString();
            Menu_Visitante.FindItem("IniciarSesion/Registrar").Text = compIdioma["M_Registrar"].ToString();
            LB_Ver.Text = compIdioma["LB_Ver"].ToString();
            LB_VerF.Text = compIdioma["LB_Ver"].ToString();
            LB_VerF2.Text = compIdioma["LB_Ver"].ToString();
        }
        catch
        {

        }
        Session["rol"]= 0;

        IB_Compa.ImageUrl = Session["IB_Compa"].ToString();
        IB_Compa2.ImageUrl = Session["IB_Compa2"].ToString();

        IB_Ferro.ImageUrl = Session["IB_Ferro"].ToString();
        IB_Ferro2.ImageUrl = Session["IB_Ferro2"].ToString();
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/View/Bienvenidos.aspx");
    }

    protected void IB_Ferro_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>window.open('http://ferronet.hopto.org/View/Productos.aspx','_blank')</script>");
    }

    protected void LB_VerF_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('http://ferronet.hopto.org/View/Productos.aspx','_blank')</script>");
    }

    protected void IB_Compa_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>window.open('http://compramatic.hopto.org:88/Presentacion/Home.aspx','_blank')</script>");

    }

    protected void IB_Compa2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>window.open('http://compramatic.hopto.org:88/Presentacion/Home.aspx','_blank')</script>");

    }

    protected void LB_Ver_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('http://compramatic.hopto.org:88/Presentacion/Home.aspx','_blank')</script>");

    }

    protected void IB_Ferro2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>window.open('http://ferronet.hopto.org/View/Productos.aspx','_blank')</script>");

    }

    protected void LB_VerF2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('http://ferronet.hopto.org/View/Productos.aspx','_blank')</script>");

    }

    protected void LB_VerC_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('http://compramatic.hopto.org:88/Presentacion/Home.aspx','_blank')</script>");

    }
}
