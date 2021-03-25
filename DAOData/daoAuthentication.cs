using DBData;
using DBUtilitarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAOData
{
    public class daoAuthentication
    {

        public void guardadoSession(DUAuthentication user)
        {
            using (var db = new Mapeo("security"))
            {
                db.uAuthentications.Add(user);
                db.SaveChanges();
            }

        }

        public void cerrarSession(string session,int user)
        {
            using (var db = new Mapeo("security"))
            {
                var datos = db.uAuthentications.Where(x=> x.Session.ToString() == session.ToString()).First();
                datos.FechaFin = DateTime.Now;

                db.SaveChanges();

            }

            using (var db = new Mapeo("usuario"))
            {
                var name = db.uUsuario.Where(x => x.Id == user).Select(x => x.UserName).First();
                var datos = db.uInicio.Where(x => x.UserName.Equals(name)).First();
                datos.Activos = datos.Activos - 1;
                db.SaveChanges();

            }
        }
    }
}
