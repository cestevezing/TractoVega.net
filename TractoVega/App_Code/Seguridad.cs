using DBData;
using DBUtilitarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Seguridad
/// </summary>
public class Seguridad : System.Web.Services.Protocols.SoapHeader
{
    public string Token { get; set; }
    public string UserName { get; set; }
    public string Clave { get; set; }

    public static bool validarToken(Seguridad stToken)
    {
        using (var db = new Mapeo("usuario"))
        {
            List<DUServicios> ser = db.uServicios.Where(x => x.Token.Contains(stToken.Token)).ToList();

            if (ser.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }

    public static string crearToken(Seguridad creden)
    {
        using (var db = new Mapeo("usuario"))
        {
            List<DUServicios> ser = db.uServicios.Where(x => x.UserName == creden.UserName && x.Clave == creden.Clave).ToList();

            if (ser.Count > 0)
            {
                var user = ser.First();
                user.FechaInicio = DateTime.Now;
                user.Token = Guid.NewGuid().ToString();
                db.SaveChanges();
                return user.Token;
            }
            else
            {
                return "-1";
            }
        }
    }
}