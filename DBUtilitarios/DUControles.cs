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
    [Table("controles", Schema = "idioma")]
    public class DUControles
    {
        private int id;
        private string control;
        private int idiomaId;
        private int formularioId;
        private string texto;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("control")]
        public string Control { get => control; set => control = value; }
        [Column("idioma_id")]
        public int IdiomaId { get => idiomaId; set => idiomaId = value; }
        [Column("formulario_id")]
        public int FormularioId { get => formularioId; set => formularioId = value; }
        [Column("texto")]
        public string Texto { get => texto; set => texto = value; }
    }
}
