using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de wsCompr
/// </summary>
public class wsCompr
{
    WSCompramatic.WebServiceSoapClient obwsClientesSoapClient = new WSCompramatic.WebServiceSoapClient();

        public WSCompramatic.clsSeguridad CrearConexion()
        {
        WSCompramatic.clsSeguridad obclsSeguridad = new WSCompramatic.clsSeguridad
        {
            stToken = "97d47fc99479da09fad68c974b2845c7",
            nomEmp = "TracktoVega"
        };
        string token = obwsClientesSoapClient.AutenticacionUsuario(obclsSeguridad);
        if (token.Equals("-1"))
        {
            return CrearConexion();
        }
        obclsSeguridad.AutenticacionToken = token;
        return obclsSeguridad;
    }

    public string ProductosC()
    {
        WSCompramatic.clsSeguridad token = CrearConexion();
        string data = obwsClientesSoapClient.traer_por_categoria(token, 46);
        DataTable inf = JsonConvert.DeserializeObject<DataTable>(data);

        if (inf.Rows.Count > 0)
        {
            Random rnd = new Random();
            int index = rnd.Next(0, inf.Rows.Count-1);
            return inf.Rows[index]["_foto"].ToString();

        }
        else
        {
            return "";
        }

               
    }
}