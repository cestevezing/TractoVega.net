using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    public class DUVistaReportePedido
    {
        private int id;
        private int referencia;
        private string nombre;
        private double precio;
        private int cantidad;
        private double total;
        private double totalfinal;

        public int Id { get => id; set => id = value; }
        public int Referencia { get => referencia; set => referencia = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public double Precio { get => precio; set => precio = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
        public double Total { get => total; set => total = value; }
        public double Totalfinal { get => totalfinal; set => totalfinal = value; }
    }
}
