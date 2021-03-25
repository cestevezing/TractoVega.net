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
    [Table("pedidos", Schema = "usuario")]
    public class DUPedidos
    {
        private int id;
        private int usuarioid;
        private DateTime fechaPedido;
        private DateTime? fechaEntrega;
        private int estado;
        private string session;
        private DateTime? lastModifiend;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("usuario_id")]
        public int Usuarioid { get => usuarioid; set => usuarioid = value; }
        [Column("fecha_pedido")]
        public DateTime FechaPedido { get => fechaPedido; set => fechaPedido = value; }
        [Column("fecha_entrega")]
        public DateTime? FechaEntrega { get => fechaEntrega; set => fechaEntrega = value; }
        [Column("estado")]
        public int Estado { get => estado; set => estado = value; }
        [Column("session")]
        public string Session { get => session; set => session = value; }
        [Column("last_modifiend")]
        public DateTime? LastModifiend { get => lastModifiend; set => lastModifiend = value; }

    }
}
