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
    [Table("inicio", Schema = "usuario")]
    public class DUInicio
    {
        private int id;
        private string userName;
        private int intentos;
        private int activos;
        private int estado;
        private DateTime fechaFin;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("user_name")]
        public string UserName { get => userName; set => userName = value; }
        [Column("intentos")]
        public int Intentos { get => intentos; set => intentos = value; }
        [Column("activos")]
        public int Activos { get => activos; set => activos = value; }
        [Column("estado")]
        public int Estado { get => estado; set => estado = value; }
        [Column("fecha_fin")]
        public DateTime FechaFin { get => fechaFin; set => fechaFin = value; }
    }
}
