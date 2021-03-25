using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    public class DULoggin
    {

        private String userId;
        private String nombre;
        private String rol;
        private String userName;
        private String clave;
        private String session;
        private String url;
        private String mensaje;

        public DULoggin()
        {

        }

        public string UserId { get => userId; set => userId = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Rol { get => rol; set => rol = value; }
        public string UserName { get => userName; set => userName = value; }
        public string Clave { get => clave; set => clave = value; }
        public string Session { get => session; set => session = value; }
        public string Url { get => url; set => url = value; }
        public string Mensaje { get => mensaje; set => mensaje = value; }
    }
}
