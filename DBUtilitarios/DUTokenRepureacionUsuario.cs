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
    [Table("token_repureacion_usuario", Schema = "usuario")]
    public class DUTokenRepureacionUsuario
    {
        private int id;
        private int userId;
        private string token;
        private DateTime fechaCreado;
        private DateTime fechaVigencia;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("user_id")]
        public int UserId { get => userId; set => userId = value; }
        [Column("token")]
        public string Token { get => token; set => token = value; }
        [Column("fecha_creado")]
        public DateTime FechaCreado { get => fechaCreado; set => fechaCreado = value; }
        [Column("fecha_vigencia")]
        public DateTime FechaVigencia { get => fechaVigencia; set => fechaVigencia = value; }

    }
}
