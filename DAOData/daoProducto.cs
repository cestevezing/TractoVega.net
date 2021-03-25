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
    public class daoProducto
    {
        public List<DUProducto> productosUsuario(Int32 categoria,String nombre)
        {
            using (var db = new Mapeo("usuario"))
            {
                if((categoria == 0) && (nombre == "-1")){

                    return db.uProducto.OrderBy(x => x.Id).ToList<DUProducto>();
                }
                else if((0 < categoria) && (nombre == "-1"))
                {
                    return db.uProducto.OrderBy(x => x.Id).Where(x=> x.CategoriaId == categoria).ToList<DUProducto>();
                }
                else if ((categoria == 0) && ( nombre != "-1"))
                {
                    return db.uProducto.OrderBy(x => x.Id).Where(x => x.Nombre.Contains(nombre)).ToList<DUProducto>();
                }
                else
                {
                    return db.uProducto.OrderBy(x => x.Id).Where(x => x.Nombre.Contains(nombre) && x.CategoriaId == categoria).ToList<DUProducto>();
                }

            }
        }

        public List<DUVistaProductos> productosMinimos()
        {
            using (var db = new Mapeo("usuario"))
            {
                var datos = (
                    from p in db.uProducto
                    join pro in db.uProveedor on p.ProveedorId equals pro.Id
                    join ca in db.uCategoria on p.CategoriaId equals ca.Id
                    where p.Cantidad < p.CantidadMinima
                    select new DUVistaProductos
                    {
                        Id = p.Id,
                        Nombre = p.Nombre,
                        Precio = p.Precio,
                        Descripcion = p.Descripcion,
                        Foto = p.Foto,
                        Fichatencica = p.FichaTecnica,
                        Proveedor = pro.Nombre,
                        Categoria = ca.Nombre,
                        Cantidad = p.Cantidad,
                        Cantidadminima = p.CantidadMinima
                    }

                 ).ToList();

                return datos;
            }
        }

        public void actualizarProducto(DUProducto producto)
        {
            using (var db = new Mapeo("usuario"))
            {
                var datos = db.uProducto.Find(producto.Id);
                daoAuditoria.update(producto,datos,producto.Session,"usuario","producto");
                db.uProducto.Attach(producto);
                var entry = db.Entry(producto);
                entry.State = EntityState.Modified;
                db.SaveChanges();
            }
        }

        public void insertarProducto(DUProducto producto)
        {
            using (var db = new Mapeo("usuario"))
            {
                db.uProducto.Add(producto);
                daoAuditoria.insert(producto,producto.Session,"usuario","producto");
                db.SaveChanges();
            }
        }

        public List<DUProducto> obtenerModificarProducto(Int32 id)
        {
            using (var db = new Mapeo("usuario"))
            {               
                    return db.uProducto.Where(x => x.Id == id).ToList<DUProducto>();
            }
        }


        public void eliminarProducto(int id,string session)
        {
            using (var db = new Mapeo("usuario"))
            {
                var producto = db.uProducto.Find(id);

                daoAuditoria.delete(producto,session,"usuario","producto");
                db.uProducto.Remove(producto);
                db.SaveChanges();
            }

        }

    }
}
