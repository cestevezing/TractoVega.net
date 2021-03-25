using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBData;
using DBUtilitarios;

namespace DAOData
{
    public class daoConfig
    {
        public List<DUConfig> Configuraciones()
        {
            using (var db = new Mapeo("usuario"))
            {
                return db.uConfig.ToList();
            }

        }

        public void ModificarConfig(DUConfig uConfig)
        {
            using (var db = new Mapeo("usuario"))
            {
                var control = db.uConfig.Find(uConfig.Id);
                control.Numero = uConfig.Numero;
                db.SaveChanges();
            }
        }
    }
}
