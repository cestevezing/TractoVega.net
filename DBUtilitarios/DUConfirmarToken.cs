using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    public class DUConfirmarToken
    {
        public DUConfirmarToken()
        {

        }

        private String mensaje;
        private String url;
        private String id;

        public string Mensaje { get => mensaje; set => mensaje = value; }
        public string Url { get => url; set => url = value; }
        public string Id { get => id; set => id = value; }
    }
}
