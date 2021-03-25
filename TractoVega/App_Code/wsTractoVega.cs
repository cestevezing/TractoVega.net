using DBUtilitarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descripción breve de wsTractoVega
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]
public class wsTractoVega : System.Web.Services.WebService
{
    public Seguridad SoapHeader;

    [WebMethod]
    [System.Web.Services.Protocols.SoapHeader("SoapHeader")]
    public string GenerarToken()
    {
        return Seguridad.crearToken(SoapHeader);

    }

    [WebMethod]
    [System.Web.Services.Protocols.SoapHeader("SoapHeader")]
    public List<ViewCategoria> Categorias()
    {
        if (Seguridad.validarToken(SoapHeader))
        {
            return Consultas.Categorias();
        }
        else
        {
            ViewCategoria cate = new ViewCategoria
            {
                Nombre = "-1"
            };
            List<ViewCategoria> error = new List<ViewCategoria>
                {
                    cate
                };
            return error;

        }
    }

    [WebMethod]
    [System.Web.Services.Protocols.SoapHeader("SoapHeader")]
    public List<ViewProveedor> Proveedores()
    {
        if (Seguridad.validarToken(SoapHeader))
        {
            return Consultas.Proveedores();
        }
        else
        {
            ViewProveedor cate = new ViewProveedor
            {
                Nombre = "-1"
            };
            List<ViewProveedor> error = new List<ViewProveedor>
                {
                    cate
                };
            return error;

        }

    }

    [WebMethod]
    [System.Web.Services.Protocols.SoapHeader("SoapHeader")]
    public List<ViewProducto> Productos()
    {
        if (Seguridad.validarToken(SoapHeader))
        {
            return Consultas.Productos();
        }
        else
        {
            ViewProducto cate = new ViewProducto
            {
                Nombre = "-1"
            };
            List<ViewProducto> error = new List<ViewProducto>
                {
                    cate
                };
            return error;

        }
    }

    [WebMethod]
    [System.Web.Services.Protocols.SoapHeader("SoapHeader")]
    public List<ViewProducto> BuscarProductos(string buscar)
    {
        if (Seguridad.validarToken(SoapHeader))
        {
            return Consultas.BuscarProductos(buscar);
        }
        else
        {
            ViewProducto cate = new ViewProducto
            {
                Nombre = "-1"
            };
            List<ViewProducto> error = new List<ViewProducto>
                {
                    cate
                };
            return error;

        }
    }

    [WebMethod]
    [System.Web.Services.Protocols.SoapHeader("SoapHeader")]
    public List<ViewUsuario> Usuarios()
    {
        if (Seguridad.validarToken(SoapHeader))
        {
            return Consultas.Usuarios(); ;
        }
        else
        {
            ViewUsuario cate = new ViewUsuario
            {
                Nombre = "-1"
            };
            List<ViewUsuario> error = new List<ViewUsuario>
                {
                    cate
                };
            return error;

        }

    }

    [WebMethod]
    [System.Web.Services.Protocols.SoapHeader("SoapHeader")]
    public string Contactenos(DUContacto con)
    {
        if (Seguridad.validarToken(SoapHeader))
        {
            Consultas.Contactenos(con);
            return "comentario exitoso";
        }
        else
        {           
            return "-1";

        }

    }

}


