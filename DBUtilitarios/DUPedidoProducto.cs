using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtilitarios
{
    [Serializable]
    [Table("pedido_producto", Schema = "usuario")]
    public class DUPedidoProducto
    {
        private int id;
        private int pedidosId;
        private int productoId;
        private int cantidad;
        private double total;
        private string session;
        private DateTime? lastModifiend;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("pedidos_id")]
        public int PedidosId { get => pedidosId; set => pedidosId = value; }
        [Column("producto_id")]
        public int ProductoId { get => productoId; set => productoId = value; }
        [Column("cantidad")]
        public int Cantidad { get => cantidad; set => cantidad = value; }
        [Column("total")]
        public double Total { get => total; set => total = value; }
        [Column("session")]
        public string Session { get => session; set => session = value; }
        [Column("last_modifiend")]
        public DateTime? LastModifiend { get => lastModifiend; set => lastModifiend = value; }
    }
}
