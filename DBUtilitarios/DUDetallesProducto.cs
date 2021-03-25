using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    public class DUDetallesProducto
    {
        private String nombre;
        private String descripcion;
        private String precio;
        private String foto;
        private String ficha;
        private Int32 disponibles;
        private String mensaje;
        private String total;

        public string Nombre { get => nombre; set => nombre = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public string Precio { get => precio; set => precio = value; }
        public string Foto { get => foto; set => foto = value; }
        public string Ficha { get => ficha; set => ficha = value; }
        public int Disponibles { get => disponibles; set => disponibles = value; }
        public string Mensaje { get => mensaje; set => mensaje = value; }
        public string Total { get => total; set => total = value; }
    }
}
