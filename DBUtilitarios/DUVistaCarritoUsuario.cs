using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    public class DUVistaCarritoUsuario
    {
        private int id;
        private int idProducto;
        private string nombre;
        private double precio;
        private int cantidad;
        private double total;
        private string foto;

        public int Id { get => id; set => id = value; }
        public int IdProducto { get => idProducto; set => idProducto = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public double Precio { get => precio; set => precio = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
        public double Total { get => total; set => total = value; }
        public string Foto { get => foto; set => foto = value; }
    }
}
