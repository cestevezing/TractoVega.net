using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace DBUtilitarios
{
    [Serializable]
    [Table("categoria", Schema = "usuario")]
    public class DUCategoria
    {

        private int id;
        private string nombre;
        private string foto;
        private string session;
        private DateTime? lastModifiend;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("nombre")]
        public string Nombre { get => nombre; set => nombre = value; }
        [Column("foto")]
        public string Foto { get => foto; set => foto = value; }
        [Column("session")]
        public string Session { get => session; set => session = value; }
        [Column("last_modifiend")]
        public DateTime? LastModifiend { get => lastModifiend; set => lastModifiend = value; }

    }
}
