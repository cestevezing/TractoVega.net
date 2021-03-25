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
    [Table("producto", Schema = "usuario")]
    public class DUProducto
    {
        private int id;
        private string nombre;
        private double precio;
        private string descripcion;
        private string foto;
        private string fichaTecnica;
        private int proveedorId;
        private int categoriaId;
        private int cantidad;
        private string session;
        private DateTime? lastModifiend;
        private int cantidadMinima;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("nombre")]
        public string Nombre { get => nombre; set => nombre = value; }
        [Column("precio")]
        public double Precio { get => precio; set => precio = value; }
        [Column("descripcion")]
        public string Descripcion { get => descripcion; set => descripcion = value; }
        [Column("foto")]
        public string Foto { get => foto; set => foto = value; }
        [Column("ficha_tecnica")]
        public string FichaTecnica { get => fichaTecnica; set => fichaTecnica = value; }
        [Column("proveedor_id")]
        public int ProveedorId { get => proveedorId; set => proveedorId = value; }
        [Column("categoria_id")]
        public int CategoriaId { get => categoriaId; set => categoriaId = value; }
        [Column("cantidad")]
        public int Cantidad { get => cantidad; set => cantidad = value; }
        [Column("session")]
        public string Session { get => session; set => session = value; }
        [Column("last_modifiend")]
        public DateTime? LastModifiend { get => lastModifiend; set => lastModifiend = value; }
        [Column("cantidad_minima")]
        public int CantidadMinima { get => cantidadMinima; set => cantidadMinima = value; }

    }
}
