using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBData;
using DBUtilitarios;

namespace DAOData
{
    public class daoTokenRepureacionUsuario
    {
        public DUUsuario validarToken(String userName,DateTime date)
        {
            using (var db = new Mapeo("usuario"))
            {
                DUUsuario user = new DUUsuario();
                var datos = (
                    from uu in db.uUsuario
                    join ut in db.uTokenRepureacionUsuario on uu.Id equals ut.UserId
                    where uu.UserName == userName && ut.FechaCreado < date && ut.FechaVigencia > date
                    select uu

                 ).ToList();

                if (db.uUsuario.Where(x => x.UserName == userName).ToList().Count() == 0 )
                {
                    user.Id = -1;
                    return user;
                }
                else if (datos.Count()>0)
                {
                    user.Id = -2;
                    return user;
                } 
                else if (db.uUsuario.Where(x => x.UserName == userName).ToList().Count()>0)
                {
                    var usuario = db.uUsuario.Where(x => x.UserName == userName).First();
                    usuario.Estado = 2;
                    db.SaveChanges();
                    return usuario;

                }
                else
                {
                    user.Id = -1;
                    return user;
                }

            }
        }

        public void almacenarToken(String token, Int32 userId)
        {
            using (var db = new Mapeo("usuario"))
            {
                DUTokenRepureacionUsuario daoToken = new DUTokenRepureacionUsuario();
                daoToken.UserId = userId;
                daoToken.Token = token;
                daoToken.FechaCreado = DateTime.Now;
                daoToken.FechaVigencia = DateTime.Now.AddHours(2);

                db.uTokenRepureacionUsuario.Add(daoToken);
                db.SaveChanges();
            }
        }

        public DUTokenRepureacionUsuario obtenerUsusarioToken(String token,DateTime date)
        {
            using (var db = new Mapeo("usuario"))
            {
                DUTokenRepureacionUsuario tok = new DUTokenRepureacionUsuario();
                if (db.uTokenRepureacionUsuario.Where(x=> x.Token == token).ToList().Count() == 0)
                {
                    tok.Id = -1;
                    return tok;
                }
                else if (db.uTokenRepureacionUsuario.Where(x => x.Token == token && x.FechaCreado < date && x.FechaVigencia > date).ToList().Count() == 0)
                {
                    tok.Id = -2;
                    return tok;
                }
                else
                {
                    return db.uTokenRepureacionUsuario.Where(x => x.Token == token).First();
                }
            }            
        }


        public void ActulizarClave(DUConexion user)
        {
            using (var db = new Mapeo("usuario"))
            {
                var token = db.uTokenRepureacionUsuario.Where(x=> x.UserId == user.UserId).First();
                db.uTokenRepureacionUsuario.Remove(token);
                db.SaveChanges();

                var usuario = db.uUsuario.Where(x => x.Id == user.UserId).First();
                usuario.Estado = 1;
                usuario.Clave = user.Clave;
                db.SaveChanges();
            }
        }
    }
}
