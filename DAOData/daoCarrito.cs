using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBData;
using DBUtilitarios;


namespace DAOData
{
    public class daoCarrito
    {
        public List<DUVistaCarritoUsuario> obtenerCarrito(Int32 buscar)
        {
            using (var db = new Mapeo("usuario"))
            {
                var datos = (
                    from c in db.uCarrito
                    join p in db.uProducto on c.ProductoId equals p.Id
                    where c.UsuarioId == buscar
                    select new DUVistaCarritoUsuario
                    {
                        Id = c.Id,
                        IdProducto = p.Id,
                        Nombre = p.Nombre,
                        Precio = p.Precio,
                        Cantidad = c.Cantidad,
                        Total = c.Total,
                        Foto = p.Foto                       
                        
                    }

                 ).Distinct().ToList();

                return datos;
            }
        }

        public void eliminarCarrito(int id,String session)
        {
            using (var db = new Mapeo("usuario"))
            {
                var cliente = db.uCarrito.Find(id);

                daoAuditoria.delete(cliente,session,"usuario","carrito");
                db.uCarrito.Remove(cliente);
                db.SaveChanges();
            }

        }

        public void insertarCarrito(DUCarrito carrito)
        {
            using (var db = new Mapeo("usuario"))
            {
                var actual = db.uCarrito.Where(x => x.UsuarioId == carrito.UsuarioId 
                && x.ProductoId == carrito.ProductoId).Count();

                if (actual == 0)
                {
                    
                    db.uCarrito.Add(carrito);
                    daoAuditoria.insert(carrito, carrito.Session, "usuario", "carrito");
                    db.SaveChanges();
                }
                else
                {
                    var suma = db.uCarrito.Where(x => x.UsuarioId == carrito.UsuarioId
                                && x.ProductoId == carrito.ProductoId).Select(x => x.Cantidad).First();
                    int a = suma + carrito.Cantidad;

                    var total = db.uCarrito.Where(x => x.UsuarioId == carrito.UsuarioId
                                && x.ProductoId == carrito.ProductoId).Select(x => x.Total).First();
                    double b = total + carrito.Total;

                    var modificar = db.uCarrito.Where(x => x.UsuarioId == carrito.UsuarioId
                                && x.ProductoId == carrito.ProductoId).First();
                    var datos = modificar;
                    modificar.Cantidad = a;
                    modificar.Total = b;
                    modificar.Session = carrito.Session;
                    modificar.LastModifiend = carrito.LastModifiend;

                    daoAuditoria.update(modificar,datos,modificar.Session,"usuario","carrito");
                    db.SaveChanges();

                }

            }
        }


        public Int32 totalCarrito(Int32 id)
        {
            using (var db = new Mapeo("usuario"))
            {
                try
                {
                    return db.uCarrito.Where(x => x.ProductoId == id).Select(x => x.Cantidad).Sum();
                }
                catch
                {
                    return 0;
                }
               
            }

        }
               
    }
}
