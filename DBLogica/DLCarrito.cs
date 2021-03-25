using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAOData;
using DBUtilitarios;

namespace DBLogica
{
    public class DLCarrito
    {
        
        public List<DUVistaCarritoUsuario> carritoUsuario(Int32 buscar)
        {
            daoCarrito dao = new daoCarrito();
            return dao.obtenerCarrito(buscar);

        }

        public void eliminarCarrito(Int32 id,String session)
        {
            daoCarrito dao = new daoCarrito();
            dao.eliminarCarrito(id,session);
        }

        public void insertarCarrito(DUCarrito carrito)
        {
            daoCarrito dao = new daoCarrito();
            dao.insertarCarrito(carrito);
        }


        public String validarCarrito(Int32 buscar)
        {
            daoCarrito dao = new daoCarrito();
            int a = dao.obtenerCarrito(buscar).Count();

            if (a > 0)
            {
                return "1";
            }
            else
            {
                return null;
            }

        }

        public Int32 totalCarrito(Int32 id)
        {
            daoCarrito dao = new daoCarrito();
            return dao.totalCarrito(id);
        }
    }
}
