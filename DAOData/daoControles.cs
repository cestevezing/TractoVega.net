using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBData;
using DBUtilitarios;


namespace DAOData
{
    public class daoControles
    {
        public void insertarControl(DUControles control,string session)
        {
            using (var db = new Mapeo("idioma"))
            {
                db.uControles.Add(control);
                daoAuditoria.insert(control,session,"idioma","controles");
                db.SaveChanges();

            }
        }

        public List<DUControles> ObtenerIdiomaControles(Int32 formulario, Int32 idioma)
        {
            using (var db = new Mapeo("idioma"))
            {
                return db.uControles.Where(x => x.FormularioId == formulario && x.IdiomaId == idioma).ToList<DUControles>();
            }
        }

        public void actualizarControles(Int32 id,String texto,string session)
        {
            using (var db = new Mapeo("idioma"))
            {
                var control = db.uControles.Find(id);
                var datos = control;
                control.Texto = texto;

                daoAuditoria.update(control,control,session,"idioma","controles");
                db.SaveChanges();

            }

        }
        public List<DUControles> ObtenerControles(Int32 formulario, Int32 idioma)
        {
            using (var db = new Mapeo("idioma"))
            {
                return db.uControles.Where(x => x.FormularioId == formulario && x.IdiomaId == idioma).ToList<DUControles>();
            }

        }
    }
}
