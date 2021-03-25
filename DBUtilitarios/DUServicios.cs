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
    [Table("servicios", Schema = "usuario")]
    public class DUServicios
    {
        private int id;
        private int servicio;
        private string token;
        private DateTime fechaInicio;
        private string userName;
        private string clave;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("servicio")]
        public int Servicio { get => servicio; set => servicio = value; }
        [Column("token")]
        public string Token { get => token; set => token = value; }
        [Column("fecha_inicio")]
        public DateTime FechaInicio { get => fechaInicio; set => fechaInicio = value; }
        [Column("username")]
        public string UserName { get => userName; set => userName = value; }
        [Column("clave")]
        public string Clave { get => clave; set => clave = value; }
    }
}
