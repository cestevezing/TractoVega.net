using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    [Serializable]

    public class ViewCategoria
    {
        private string nombre;
        private string foto;

        public string Nombre { get => nombre; set => nombre = value; }
        public string Foto { get => foto; set => foto = value; }
    }
}
