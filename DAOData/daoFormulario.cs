using DBData;
using DBUtilitarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAOData
{
    public class daoFormulario
    {
        public List<DUFormulario> ObtenerFormularios()
        {
            using (var db = new Mapeo("idioma"))
            {
                return db.uFormulario.ToList<DUFormulario>();
            }
        }
    }
}
