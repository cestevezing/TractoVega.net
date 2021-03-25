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
    [Table("contacto",Schema="usuario")]
    public class DUContacto
    {
        private int id;
        private string nombre;
        private string correo;
        private string comentario;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("nombre")]
        public string Nombre { get => nombre; set => nombre = value; }
        [Column("correo")]
        public string Correo { get => correo; set => correo = value; }
        [Column("comentario")]
        public string Comentario { get => comentario; set => comentario = value; }
    }
}
