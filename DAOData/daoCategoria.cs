using DBData;
using DBUtilitarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAOData
{
    public class daoCategoria
    {
        //obtiene las categorias para la gridview del admin
        public List<DUCategoria> obtenerCategorias(String buscar)
        {
            using (var db = new Mapeo("usuario"))
            {
                
                if (buscar ==  "0")
                {
                     return db.uCategoria.Where(x => x.Id > 0).ToList<DUCategoria>();

                }
                else
                {
                     return  db.uCategoria.Where(x => x.Nombre.Contains(buscar) && x.Id > 0).ToList<DUCategoria>();

                }

             }
        }

        public List<DUCategoria> obtenerCategoriaModificar(Int32 id)
        {
            using (var db = new Mapeo("usuario"))
            {
                return db.uCategoria.Where(x => x.Id == id).ToList<DUCategoria>();

            }
        }

        //obtiene las taregorias para el drowdondlist 
        public List<DUCategoria> categoriasDDL()
        {
            using (var db = new Mapeo("usuario"))
            {
                    return db.uCategoria.OrderBy(x=> x.Id).ToList<DUCategoria>();
                           

            }
        }

        public void eliminarCategoria(int id,string session)
        {
            using (var db = new Mapeo("usuario"))
            {
                var categoria = db.uCategoria.Find(id);
                daoAuditoria.delete(categoria,session,"usuario","categoria");
                db.uCategoria.Remove(categoria);
                db.SaveChanges();
            }

        }
        public void modificarCategoria(DUCategoria categoria)
        {
            using (var db = new Mapeo("usuario"))
            {
                var control = db.uCategoria.Find(categoria.Id);
                var datos = control;
                control.Nombre = categoria.Nombre;
                control.Foto = categoria.Foto;
                control.Session = categoria.Session;
                control.LastModifiend = DateTime.Now;

                daoAuditoria.update(control,datos,control.Session,"usuario","categoria");
                db.SaveChanges();

            }
        }

        public void agregarCategoria(DUCategoria categoria )
        {
            using (var db = new Mapeo("usuario"))
            {
                db.uCategoria.Add(categoria);
                daoAuditoria.insert(categoria,categoria.Session,"usuario","categoria");
                db.SaveChanges();

            }
        }

    }
}
