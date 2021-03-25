using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de wsTatto
/// </summary>
public class wsTatto
{
    WSTatto.WebServiceSoapClient objSevicios = new WSTatto.WebServiceSoapClient();

    public String Galeria()
    {
        try
        {
            DataSet a = objSevicios.Galeria();
            Random rnd = new Random();
            int index = rnd.Next(0, a.Tables[0].Rows.Count-1);
            return a.Tables[0].Rows[index]["Img"].ToString();
        }
        catch
        {
            return "";
        }
    }
}