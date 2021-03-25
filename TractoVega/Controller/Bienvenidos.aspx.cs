using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBUtilitarios;
using DBLogica;

public partial class View_Bienvenidos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["IB_Compa"] = "";
            Session["IB_Compa2"] = "";
            Session["IB_Ferro"] = "";
            Session["IB_Ferro2"] = "";
            Session["IB_Plato1"] = "";
            Session["IB_Plato2"] = "";
            Session["IB_Tato1"] = "";
            Session["IB_Tato2"] = "";
            try
            {
                wsCompr ws = new wsCompr();
                Session["IB_Compa"] = ws.ProductosC();
                Session["IB_Compa2"] = ws.ProductosC();
            }
            catch
            {
            }
            try
            {
                wsFerro wsf = new wsFerro();
                Session["IB_Ferro"] = "http://ferronet.hopto.org" + wsf.ProductosF();
                Session["IB_Ferro2"] = "http://ferronet.hopto.org" + wsf.ProductosF();

            }
            catch
            {
            }

            try
            {
                wsPlato wsP = new wsPlato();
                Session["IB_Plato1"] = wsP.Producto();
                Session["IB_Plato2"] = wsP.Producto();

            }
            catch
            {
            }
            try
            {
                wsTatto tatto = new wsTatto();
                Session["IB_Tato1"] = tatto.Galeria();
                Session["IB_Tato2"] = tatto.Galeria();

            }
            catch
            {
            }
        }
        
        
    }

    protected void DDL_Idioma_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["idioma"] =  DDL_Idioma.SelectedValue.ToString();
        Response.Redirect("~/View/Inicio_Visitante.aspx");

        DLIdioma idioma = new DLIdioma();
        DLIdioma datos = new DLIdioma();
        String ter = idioma.obtenerTerminacion(int.Parse(Session["idioma"].ToString()));

        Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(ter);
        Thread.CurrentThread.CurrentUICulture = new CultureInfo(ter);
    }

    
}