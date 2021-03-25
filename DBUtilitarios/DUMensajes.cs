using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    public class DUMensajes
    {
        public DUMensajes()
        {

        }
        private String mensaje;
        private String url;

        public string Mensaje { get => mensaje; set => mensaje = value; }
        public string Url { get => url; set => url = value; }
    }
}
