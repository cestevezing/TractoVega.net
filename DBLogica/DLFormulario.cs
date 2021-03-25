using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBUtilitarios;
using DAOData;

namespace DBLogica
{
    public class DLFormulario
    {
        public List<DUFormulario> obtenerFormularios()
        {
            daoFormulario dao = new daoFormulario();
            return dao.ObtenerFormularios();
        }

    }
}
