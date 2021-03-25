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
    [Table("auditoria", Schema = "security")]

    public class DUAuditoria
    {

        private int id;
        private DateTime fecha;
        private string accion;
        private string schema;
        private string tabla;
        private string session;
        private string userBd;
        private string data;
        private string pk;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("fecha")]
        public DateTime Fecha { get => fecha; set => fecha = value; }
        [Column("accion")]
        public string Accion { get => accion; set => accion = value; }
        [Column("schema")]
        public string Schema { get => schema; set => schema = value; }
        [Column("tabla")]
        public string Tabla { get => tabla; set => tabla = value; }
        [Column("session")]
        public string Session { get => session; set => session = value; }
        [Column("user_bd")]
        public string UserBd { get => userBd; set => userBd = value; }
        [Column("data")]
        public string Data { get => data; set => data = value; }
        [Column("pk")]
        public string Pk { get => pk; set => pk = value; }

    }
}
