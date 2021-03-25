using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    [Serializable]
    public class WSTopProductos
    {
        private string imagen;
        private int codigo;
        private string descripcion;
        private string categoria;
        private double precio;
        private string subsede;

        public string Imagen { get => imagen; set => imagen = value; }
        public int Codigo { get => codigo; set => codigo = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public string Categoria { get => categoria; set => categoria = value; }
        public double Precio { get => precio; set => precio = value; }
        public string Subsede { get => subsede; set => subsede = value; }
    }
}
