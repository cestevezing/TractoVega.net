using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de wsPlato
/// </summary>
public class wsPlato
{
    WSPlatoWeb.ServiciosSoapClient objServicios = new WSPlatoWeb.ServiciosSoapClient();
    public String Producto()
    {
        WSPlatoWeb.Seguridad seguridad = new WSPlatoWeb.Seguridad()
        {
            stToken = DateTime.Now.ToString("yyyyMMdd")
        };

        String StToken = objServicios.AutenticationUsuario(seguridad);
        if (StToken.Equals("-1"))
            return Producto();

        seguridad.AutenticationToken = StToken;

        String top = objServicios.TopPlatos(seguridad);

        DataTable t = JsonConvert.DeserializeObject<DataTable>(top);
        Random rnd = new Random();
        int index = rnd.Next(0, t.Rows.Count-1);

        return t.Rows[index]["imagen"].ToString();
    }
}