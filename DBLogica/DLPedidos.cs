using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBUtilitarios;
using DAOData;

namespace DBLogica
{
    public class DLPedidos
    {
        public List<DUPedidos> obtenerPedidos(Int32 estado, String usuario)
        {
            daoPedidos dao = new daoPedidos();
            return dao.obtenerPedidos(estado, usuario);

        }

        public List<DUVistaReportePedido> reportePedidos(Int32 id)
        {
            daoPedidos dao = new daoPedidos();
            return dao.reportePedidos(id);

        }
        public List<DUVistaVentasMes> ventasMes()
        {
            daoPedidos dao = new daoPedidos();
            return dao.ventasMes();

        }

        public void confirmarVenta(Int32 id, String session)
        {
            daoPedidos dao = new daoPedidos();
            dao.confirmarVenta(id,session);
        }

        public Int32 generarPedido(DUPedidos pedido)
        {
            daoPedidos dao = new daoPedidos();
            return dao.generarPedido(pedido);
        }
    }
}
