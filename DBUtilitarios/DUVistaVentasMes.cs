using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    public class DUVistaVentasMes
    {
        private int referencia;
        private string username;
        private DateTime fechaPedido;
        private DateTime fechaEntrega;
        private double total;
        private string mes;

        public int Referencia { get => referencia; set => referencia = value; }
        public string Username { get => username; set => username = value; }
        public DateTime FechaPedido { get => fechaPedido; set => fechaPedido = value; }
        public DateTime FechaEntrega { get => fechaEntrega; set => fechaEntrega = value; }
        public double Total { get => total; set => total = value; }
        public string Mes { get => mes; set => mes = value; }
    }
}
