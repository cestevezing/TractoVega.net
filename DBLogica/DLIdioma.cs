using DAOData;
using DBUtilitarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBLogica
{
    public class DLIdioma
    {
        public List<DUIdioma> obtenerIdiomas()
        {
            daoIdioma dao = new daoIdioma();
            return dao.ObtenerIdiomas();
        }

        public String obtenerTerminacion(Int32 id)
        {
            daoIdioma dao = new daoIdioma();
            return dao.ObtenerTerminacion(id);

        }

        public void actualizarIdioma(int id, string nombre, string terminacion,string session)
        {
            daoIdioma dao = new daoIdioma();
            dao.ActualizarIdioma(id, nombre, terminacion,session);
        }

        public void insertarIdioma(DUIdioma idioma, string session)
        {
            daoIdioma dao = new daoIdioma();
            dao.insertarIdioma(idioma,session);

        }
    }
}
