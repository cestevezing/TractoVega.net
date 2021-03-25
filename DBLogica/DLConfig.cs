using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBUtilitarios;
using DAOData;

namespace DBLogica
{
    public class DLConfig
    {
        public List<DUConfig> Configuraciones()
        {
            daoConfig dao = new daoConfig();
            return dao.Configuraciones();
        }

        public void ModificarConfig(DUConfig uConfig)
        {
            daoConfig dao = new daoConfig();
            dao.ModificarConfig(uConfig);
        }
    }
}
