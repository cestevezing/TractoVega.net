using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace DBUtilitarios
{
    [Serializable]
    [Table("carrito", Schema = "usuario")]
    public class DUCarrito
    {
        private int id;
        private int usuarioId;
        private int productoId;
        private DateTime? fechapedido;
        private int cantidad;
        private double total;
        private string session;
        private DateTime? lastModifiend;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("usuario_id")]
        public int UsuarioId { get => usuarioId; set => usuarioId = value; }
        [Column("producto_id")]
        public int ProductoId { get => productoId; set => productoId = value; }
        [Column("fechapedido")]
        public DateTime? Fechapedido { get => fechapedido; set => fechapedido = value; }
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
