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
    public class daoProveedor
    {
        public List<DUProveedor> obtenerProveedores()
        {
            using (var db = new Mapeo("usuario"))
            {
                return db.uProveedor.OrderBy(x=> x.Id).ToList<DUProveedor>();

            }
        }

        public List<DUProveedor> obtenerProveedorModificar(Int32 id)
        {
            using (var db = new Mapeo("usuario"))
            {
                return db.uProveedor.Where(x => x.Id ==  id).ToList<DUProveedor>();

            }
        }

        public void actualizarProveedor(DUProveedor proveedor)
        {
            using (var db = new Mapeo("usuario"))
            {
                var datos = db.uProveedor.Find(proveedor.Id);
                daoAuditoria.update(proveedor,datos,proveedor.Session,"usuario","proveedor");

                db.uProveedor.Attach(proveedor);
                var entry = db.Entry(proveedor);
                entry.State = EntityState.Modified;
                db.SaveChanges();
            }
        }

        public void insertarProveedor(DUProveedor proveedor)
        {
            using (var db = new Mapeo("usuario"))
            {
                db.uProveedor.Add(proveedor);
                daoAuditoria.insert(proveedor,proveedor.Session,"usuario","proveedor");
                db.SaveChanges();
            }
        }

        public List<DUProveedor> obtenerProveedorAdmin(String nombre)
        {
            using (var db = new Mapeo("usuario"))
            {
                if(nombre == "-1"){

                    return db.uProveedor.Where(x=> x.Id != 0).OrderBy(x => x.Id ).ToList<DUProveedor>();
                }
                else
                {
                    return db.uProveedor.Where(x => x.Nombre.Contains(nombre) && x.Id != 0).OrderBy(x => x.Id).ToList<DUProveedor>();

                }
            }
                
        }

        public void eliminarProveedor(int id,string session)
        {
            using (var db = new Mapeo("usuario"))
            {
                var proveedor = db.uProveedor.Find(id);
                daoAuditoria.delete(proveedor,session,"usuario","proveedor");

                db.uProveedor.Remove(proveedor);
                db.SaveChanges();
            }

        }

    }
}
