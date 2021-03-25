using DBUtilitarios;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de wsFerro
/// </summary>
public class wsFerro
{
    public WSFerronet.ServiciosSoapClient objServicio = new WSFerronet.ServiciosSoapClient();

    public WSFerronet.SeguridadToken CrearConexion()
    {

        //objServicio.ClientCredentials.UserName.UserName = "tractovega";
        //objServicio.ClientCredentials.UserName.Password = "Jwk8jiL8*N";

        WSFerronet.SeguridadToken seguridad = new WSFerronet.SeguridadToken()
        {
            username = "tractovega",
            contrasena = "Jwk8jiL8*N"
        };

        seguridad.AutenticacionToken = objServicio.autenticacionUsuario(seguridad);
        return seguridad;

    }

    public List<WSProveedores> ProveedoresF(int es)
    {
        WSFerronet.SeguridadToken token = CrearConexion();
        if (token.AutenticacionToken.Equals("-1"))
        {
            CrearConexion();
            return ProveedoresF(es);
        }
        else
        {
            return JsonConvert.DeserializeObject<List<WSProveedores>>(objServicio.ConsultaDeProveedores(token, es));
        }
    }

    public string ProductosF()
    {
        WSFerronet.SeguridadToken token = CrearConexion();
        if (token.AutenticacionToken.Equals("-1"))
        {
            CrearConexion();
            return ProductosF();
        }
        else
        {
            List<WSTopProductos> productos = JsonConvert.DeserializeObject<List<WSTopProductos>>(objServicio.ConsultaTopProductos(token));

            Random rnd = new Random();
            int index = rnd.Next(0, productos.Count-1);
            return productos[index].Imagen.Replace("~","");
        }
    }
}