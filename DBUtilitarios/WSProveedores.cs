using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    [Serializable]
    public class WSProveedores
    {
        private int codigo;
        private string nombre;
        private string correo;
        private string telefono;
        private string categoria;

        public int Codigo { get => codigo; set => codigo = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Telefono { get => telefono; set => telefono = value; }
        public string Categoria { get => categoria; set => categoria = value; }
    }
}
