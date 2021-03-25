using DBUtilitarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAOData;


namespace DBLogica
{
    public class DLPedidoProducto
    {
        public List<DUVistaDetallesPedido> detallesPedidos(Int32 id)
        {
            daoPedidoProducto dao = new daoPedidoProducto();
            return dao.detallesPedidos(id);
        }
                
    }
}
