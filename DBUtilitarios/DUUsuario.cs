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
    [Table("usuario", Schema = "usuario")]
    public class DUUsuario
    {
        private int id;
        private string nombre;
        private string direccion;
        private string telefono;
        private string correo;
        private string userName;
        private string clave;
        private int rol;
        private int estado;
        private string session;
        private DateTime? lastModifiend;
        private double credito;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("nombre")]
        public string Nombre { get => nombre; set => nombre = value; }
        [Column("direccion")]
        public string Direccion { get => direccion; set => direccion = value; }
        [Column("telefono")]
        public string Telefono { get => telefono; set => telefono = value; }
        [Column("correo")]
        public string Correo { get => correo; set => correo = value; }
        [Column("user_name")]
        public string UserName { get => userName; set => userName = value; }
        [Column("clave")]
        public string Clave { get => clave; set => clave = value; }
        [Column("rol")]
        public int Rol { get => rol; set => rol = value; }
        [Column("estado")]
        public int Estado { get => estado; set => estado = value; }
        [Column("session")]
        public string Session { get => session; set => session = value; }
        [Column("last_modifiend")]
        public DateTime? LastModifiend { get => lastModifiend; set => lastModifiend = value; }
        [Column("credito")]
        public double Credito { get => credito; set => credito = value; }

    }
}
