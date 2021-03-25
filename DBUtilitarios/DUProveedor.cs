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
    [Table("proveedor", Schema = "usuario")]
    public class DUProveedor
    {

        private int id;
        private string nombre;
        private string telefono;
        private string correo;
        private string direccion;
        private string session;
        private DateTime? lastModifiend;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("nombre")]
        public string Nombre { get => nombre; set => nombre = value; }
        [Column("telefono")]
        public string Telefono { get => telefono; set => telefono = value; }
        [Column("correo")]
        public string Correo { get => correo; set => correo = value; }
        [Column("direccion")]
        public string Direccion { get => direccion; set => direccion = value; }
        [Column("session")]
        public string Session { get => session; set => session = value; }
        [Column("last_modifiend")]
        public DateTime? LastModifiend { get => lastModifiend; set => lastModifiend = value; }

    }

}
