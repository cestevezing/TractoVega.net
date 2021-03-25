using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de wsColegio
/// </summary>
public class wsColegio
{
    public DataSet Acudientes()
    {
        WSColegio.WSEstudianteAcudienteSoapClient obwsClienteSoap = new WSColegio.WSEstudianteAcudienteSoapClient();

        WSColegio.clsSeguridadEstudianteAcu cls = new WSColegio.clsSeguridadEstudianteAcu()        
        {
            stToken = "estacu"
        };

        string stToken = obwsClienteSoap.AutenticacionUsuario(cls);

        if (stToken.Equals("-1"))
            return Acudientes();

        cls.AutenticacionToken = stToken;

        DataSet a = obwsClienteSoap.listaEstudianteAcudiente();
        return a;

    }
}