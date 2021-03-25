using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBLogica
{
    public class DLValidaciones
    {

        public DLValidaciones(){

        }
        //valida el rol Admin 
        public string validarRolAdmin(String sesion)
        {
            string url;
            if (sesion != null)
            {

                if (sesion != "2")
                {

                   url = "~/View/Login_Visitante.aspx";

                }
                else
                {
                    url = null;

                }

            }
            else
            {
                url = "~/View/Login_Visitante.aspx";
            }
            return url;
        }

        public string validarRolUsuario(String sesion)
        {
            string url ;
            if (sesion != null)
            {

                if (sesion != "1")
                {

                    url = "~/View/Login_Visitante.aspx";

                }
                else
                {
                    url = null;
                }

            }
            else
            {
                url = "~/View/Login_Visitante.aspx";
            }
            return url;
        }


        public String ValidarPostBack(Boolean val)
        {
            String valor="0";
            if (val)
            {
                valor = null;
            }
            return valor;
        }

        public String validarFoto(String FLFoto,String nombreFoto)
        {
            String valor = "0";

            if ((FLFoto != "") & (nombreFoto != FLFoto))
            {

                
            }
            else if ((FLFoto != "") & (nombreFoto == FLFoto))
            {
                valor = null;
            }
            else
            {
                valor = null;
            }
            return valor;
        }

        public void validarExtencion(String extension,String saveLocation)
        {
            if (!(string.Compare(extension, ".jpg", true) == 0 || string.Compare(extension, ".png", true) == 0 || string.Compare(extension, ".jpeg", true) == 0 || string.Compare(extension, ".gif", true) == 0 || string.Compare(extension, ".jpe", true) == 0 || string.Compare(extension, ".jfif", true) == 0)
             ||System.IO.File.Exists(saveLocation))
            {
                throw new Exception();
            }
            else
            {

            }
        }

    }
}
