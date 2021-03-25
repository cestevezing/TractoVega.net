using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    public class DUConexion
    {

        private Int32 userId;
        private String session;
        private String ip;
        private String mac;
        private String clave;

        public DUConexion()
        {
        }

        public int UserId { get => userId; set => userId = value; }
        public string Session { get => session; set => session = value; }
        public string Ip { get => ip; set => ip = value; }
        public string Mac { get => mac; set => mac = value; }
        public string Clave { get => clave; set => clave = value; }
    }
}
