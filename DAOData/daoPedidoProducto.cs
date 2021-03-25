using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBData;
using DBUtilitarios;

namespace DAOData
{
    public class daoPedidoProducto
    {
        public List<DUVistaDetallesPedido> detallesPedidos(Int32 id)
        {
            using (var db = new Mapeo("usuario"))
            {
                var datos = (
                    from pp in db.uPedidoProducto
                    join p in db.uProducto on pp.ProductoId equals p.Id
                    where pp.PedidosId == id
                    select new DUVistaDetallesPedido
                    {
                        Id = p.Id,
                        Nombre = p.Nombre,
                        Precio = p.Precio,
                        Cantidad = pp.Cantidad,
                        Total = pp.Total
                        
                    }

                 ).Distinct().ToList();

                return datos;
            }
        }
    }
}
