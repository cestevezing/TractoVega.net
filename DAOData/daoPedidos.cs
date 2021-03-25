using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBData;
using DBUtilitarios;

namespace DAOData
{
    public class daoPedidos
    {
        public List<DUPedidos> obtenerPedidos(Int32 estado, String usuario)
        {
            using (var db = new Mapeo("usuario"))
            {
                if (estado > 0 && int.Parse(usuario) > 0) {

                    return db.uPedidos.Where(x => x.Estado == estado && x.Usuarioid.ToString().Contains(usuario))
                        .OrderBy(x=> x.Estado).OrderByDescending(x => x.FechaPedido).ToList();
                }
                else if (estado > 0 && int.Parse(usuario) == 0) {

                    return db.uPedidos.Where(x => x.Estado == estado)
                        .OrderBy(x => x.Estado).OrderByDescending(x => x.FechaPedido).ToList();
                }
                else if (estado == 0 && int.Parse(usuario) > 0)
                {
                    return db.uPedidos.Where(x => x.Usuarioid.ToString().Contains(usuario))
                        .OrderBy(x => x.Estado).OrderByDescending(x => x.FechaPedido).ToList();
                }
                else
                {
                    return db.uPedidos.OrderBy(x => x.Estado).OrderByDescending(x => x.FechaPedido).ToList();
                }
            }   

        }

        public List<DUVistaReportePedido> reportePedidos(Int32 id)
        {
            using (var db = new Mapeo("usuario"))
            {
                var total = db.uPedidoProducto.Where(x => x.PedidosId == id).Select(x => x.Total).Sum();
                var datos = (from pp in db.uPedidoProducto
                             join p in db.uProducto on pp.ProductoId equals p.Id
                             where pp.PedidosId == id
                             select new DUVistaReportePedido
                             {
                                 Id = pp.PedidosId,
                                 Referencia = p.Id,
                                 Nombre = p.Nombre,
                                 Precio = p.Precio,
                                 Cantidad = pp.Cantidad,
                                 Total = pp.Total,
                                 Totalfinal = total

                             }).ToList();
                return datos;

            }
        }


        public void confirmarVenta(Int32 id,String session)
        {
            using (var db = new Mapeo("usuario"))
            {
                var control = db.uPedidos.Where(x=> x.Id == id).First();
                var datos = control;
                control.FechaEntrega = DateTime.Now;
                control.Estado = 2;
                control.Session = session;
                control.LastModifiend = DateTime.Now;

                daoAuditoria.update(control,datos,session,"usuario","pedidos");
                db.SaveChanges();
            }
        }

        public Int32 generarPedido(DUPedidos pedido)
        {
            using (var db = new Mapeo("usuario"))
            {
                pedido.Estado = 1;
                pedido.FechaPedido = DateTime.Now;
                pedido.LastModifiend = DateTime.Now;
                db.uPedidos.Add(pedido);

                daoAuditoria.insert(pedido, pedido.Session, "usuario", "pedidos");
                db.SaveChanges();

                List<DUCarrito> productos = db.uCarrito.Where(x => x.UsuarioId == pedido.Usuarioid).ToList();

                foreach (DUCarrito car in productos)
                {
                    DUPedidoProducto pd = new DUPedidoProducto();
                    pd.PedidosId = pedido.Id;
                    pd.ProductoId = car.ProductoId;
                    pd.Cantidad = car.Cantidad;
                    pd.Total = car.Total;
                    pd.Session = pedido.Session;
                    pd.LastModifiend = DateTime.Now;

                    db.uPedidoProducto.Add(pd);
                    db.SaveChanges();
                }

                foreach (DUCarrito car in productos)
                {
                    var producto = db.uProducto.Find(car.ProductoId);
                    var aux = producto; 
                    producto.Cantidad = producto.Cantidad - car.Cantidad;
                    producto.Session = pedido.Session;
                    producto.LastModifiend = DateTime.Now;

                    daoAuditoria.update(producto, aux, producto.Session, "usuario", "producto");
                    db.SaveChanges();

                }

                foreach (DUCarrito car in productos)
                {
                    daoAuditoria.delete(car,pedido.Session,"usuario","carrito");
                    db.uCarrito.Remove(car);
                    db.SaveChanges();
                }

                return pedido.Id;
            }


        }


        public List<DUVistaVentasMes> ventasMes()
        {
            DateTime aux = DateTime.Now;
            DateTime fecha = new DateTime(aux.Year, aux.Month, 1);

            using (var db = new Mapeo("usuario"))
            {
                    var datos = (
                    from p  in db.uPedidos
                    join u in db.uUsuario on p.Usuarioid equals u.Id
                    where  p.FechaPedido >= fecha && p.Estado == 2
                    select new DUVistaVentasMes
                    {
                        Referencia = p.Id,
                        Username = u.UserName,
                        FechaPedido = p.FechaPedido,
                        FechaEntrega = (DateTime)p.FechaEntrega,
                        Total = db.uPedidoProducto.Where(x => x.PedidosId == p.Id).Select(x=> x.Total).Sum(),
                        Mes =  aux.Month.ToString()
                    }).ToList();
                return datos;
            }
        }
               
    }
}
