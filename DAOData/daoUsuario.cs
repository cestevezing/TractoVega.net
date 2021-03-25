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
    public class daoUsuario
    {
        public List<DUUsuario> perfilUsuario(Int32 id)
        {
            using (var db = new Mapeo("usuario"))
            {
                return db.uUsuario.Where(x => x.Id == id).ToList<DUUsuario>();

            }
        }

        public void actualizarUsuario(DUUsuario usuar)
        {
            using (var db = new Mapeo("usuario"))
            {
                var datos = db.uUsuario.Find(usuar.Id);
                daoAuditoria.update(usuar,datos,usuar.Session,"usuario","usuario");
                datos.Clave = usuar.Clave;
                datos.Correo = usuar.Correo;
                datos.Credito = usuar.Credito;
                datos.Direccion = usuar.Direccion;
                datos.Telefono = usuar.Telefono;
                datos.Nombre = usuar.Nombre;
                datos.Session = usuar.Session;
                datos.LastModifiend = usuar.LastModifiend;
                
                db.SaveChanges();
            }
        }


        public List<DUUsuario> obtenerUsuarios(String nombre)
        {
            using (var db = new Mapeo("usuario"))
            {
                if (nombre == "-1")
                {
                    return db.uUsuario.ToList();
                }
                else
                {
                    return db.uUsuario.Where(x => x.UserName.Contains(nombre)).ToList();
                }
                

            }
        }

        public List<DUUsuario> usuarioRepetido(DUUsuario user)
        {
            using (var db = new Mapeo("usuario"))
            {
                return db.uUsuario.Where(x => x.UserName == user.UserName).ToList();
            }
        }

        public void agregarUsuario(DUUsuario user)
        {
            using (var db = new Mapeo("usuario"))
            {
                db.uUsuario.Add(user);

                daoAuditoria.insert(user,user.Session,"usuario","usuario");
                db.SaveChanges();

            }
        }

        public DUUsuario loginVisitante(DULoggin user)
        {
            using (var db = new Mapeo("usuario"))
            {
                DUUsuario du = new DUUsuario();

                List<DUUsuario> resul = db.uUsuario.Where(x => x.UserName == user.UserName && x.Clave == user.Clave).ToList();
                List<DUInicio> ini = db.uInicio.Where(x => x.UserName == user.UserName).ToList();
                List<DUConfig> con = db.uConfig.ToList();
                if (resul.Count() > 0 && resul.First().Estado == 1)
                {
                    if (ini.Count() > 0 && ini.First().Estado == 1 )
                    {
                        DUInicio fin = ini.First();
                        DUConfig act = con.Where(x => x.Nombre == "activos").First();
                        if (fin.Activos < act.Numero)
                        {
                            fin.Activos = fin.Activos + 1;
                            fin.Intentos = 0;
                            fin.FechaFin = DateTime.Now.AddMinutes(15);
                            db.SaveChanges();
                            return db.uUsuario.Where(x => x.UserName == user.UserName && x.Clave == user.Clave).First();
                        }
                        else
                        {
                            du.Id = -1;
                            return du;

                        }
                    }
                    else if(ini.Count() > 0 && ini.First().Estado == 2)
                    {
                        du.Id = -2;
                        return du;
                    }
                    else
                    {
                        DUInicio inicio = new DUInicio();
                        inicio.UserName = user.UserName;
                        inicio.Intentos = 0;
                        inicio.Activos = 1;
                        inicio.Estado = 1;
                        inicio.FechaFin = DateTime.Now;
                        db.uInicio.Add(inicio);
                        db.SaveChanges();

                        return db.uUsuario.Where(x => x.UserName == user.UserName && x.Clave == user.Clave).First();


                    }
                    

                }
                else if (resul.Count() > 0 && resul.First().Estado == 2)
                {
                    du.Id = -2;
                    return du;
                }
                else
                {
                    if (ini.Count() > 0 && ini.First().Estado == 1)
                    {
                        DUInicio fin = ini.First();
                        DUConfig act = con.Where(x => x.Nombre == "intentos").First();
                        fin.Intentos = fin.Intentos + 1;
                        
                        if (fin.Intentos >= act.Numero )
                        {
                            fin.Estado = 2;
                        }
                        fin.FechaFin = DateTime.Now.AddMinutes(15);
                        db.SaveChanges();

                        du.Id = -3;
                        return du;

                    }
                    else if (ini.Count() > 0 && ini.First().Estado == 2)
                    {
                        du.Id = -2;
                        return du;
                    }
                    else
                    {
                        DUInicio inicio = new DUInicio();
                        inicio.UserName = user.UserName;
                        inicio.Intentos = 0;
                        inicio.Activos = 1;
                        inicio.Estado = 1;
                        inicio.FechaFin = DateTime.Now;
                        db.uInicio.Add(inicio);
                        db.SaveChanges();

                        du.Id = -3;
                        return du;

                    }
                }

            }
        }

    }
}
