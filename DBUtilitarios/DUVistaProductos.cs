using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    public class DUVistaProductos
    {
        private int id;
        private string nombre;
        private double precio;
        private string descripcion;
        private string foto;
        private string fichatencica;
        private string proveedor;
        private string categoria;
        private int cantidad;
        private int cantidadminima;

        public int Id { get => id; set => id = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public double Precio { get => precio; set => precio = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public string Foto { get => foto; set => foto = value; }
        public string Fichatencica { get => fichatencica; set => fichatencica = value; }
        public string Proveedor { get => proveedor; set => proveedor = value; }
        public string Categoria { get => categoria; set => categoria = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
        public int Cantidadminima { get => cantidadminima; set => cantidadminima = value; }
    }
}
