using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBData;
using DBUtilitarios;

namespace DAOData
{
    public class daoIdioma
    {
        
        public List<DUIdioma> ObtenerIdiomas()
        {
            using (var db = new Mapeo("idioma"))
            {
                return db.uIdioma.OrderBy(x=> x.Id).ToList<DUIdioma>();
            }
        }

        public String ObtenerTerminacion(Int32 id)
        {
            using (var db = new Mapeo("idioma"))
            {
                return db.uIdioma.Where(x => x.Id == id).Select(x=> x.Terminacion ).First().ToString();
            }
        }

        public void ActualizarIdioma(int id, string nombre,string terminacion,string session)
        {
            using (var db = new Mapeo("idioma"))
            {
                var idioma = db.uIdioma.Find(id);
                var datos = idioma;

                idioma.Nombre = nombre;
                idioma.Terminacion = terminacion;

                daoAuditoria.update(idioma,datos,session,"idioma","idioma");
                db.SaveChanges();

            }

        }

        public void insertarIdioma(DUIdioma idioma, string session)
        {
            using (var db = new Mapeo("idioma"))
            {
                db.uIdioma.Add(idioma);
                daoAuditoria.insert(idioma,session,"idioma","idioma");
                db.SaveChanges();
            }
        }

    }
}

