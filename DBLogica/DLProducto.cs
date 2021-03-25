using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBUtilitarios;
using DAOData;

namespace DBLogica
{
    public class DLProducto
    {
        public List<DUProducto> productosUsuario(Int32 categoria, String nombre)
        {
            daoProducto dao = new daoProducto();
            return dao.productosUsuario(categoria, nombre);

        }

        public List<DUVistaProductos> ObtenerInformeInventario()
        {
            daoProducto pro = new daoProducto();
            return pro.productosMinimos();
        }

        public void actualizarProducto(DUProducto producto)
        {
            daoProducto pro = new daoProducto();
            pro.actualizarProducto(producto);

        }

        public void insertarProducto(DUProducto producto)
        {
            daoProducto pro = new daoProducto();
            pro.insertarProducto(producto);
        }

        public List<DUProducto> obtenerModificarProducto(Int32 id)
        {
            daoProducto pro = new daoProducto();
            return pro.obtenerModificarProducto(id);

        }

        public void eliminarProducto(int id,string session)
        {
            daoProducto pro = new daoProducto();
            pro.eliminarProducto(id,session);
        }

        public DUDetallesProducto DetallesProducto(Int32 id)
        {
            DUProducto pro = new DUProducto();
            DLProducto producto = new DLProducto();
            DUDetallesProducto detalles = new DUDetallesProducto();
            DLCarrito carrito = new DLCarrito();
            pro = producto.obtenerModificarProducto(id).First();

            detalles.Nombre = pro.Nombre;
            detalles.Descripcion = pro.Descripcion;
            detalles.Precio = "" + pro.Precio;
            detalles.Foto = pro.Foto;
            detalles.Ficha = pro.FichaTecnica;


            String h = ""+carrito.totalCarrito(id);
            Int32 totalCarrito;
            if (h.Length == 0)
            {
                totalCarrito = 0;
            }
            else
            {
                totalCarrito = int.Parse(h);
            }

            detalles.Disponibles = pro.Cantidad - totalCarrito;


            return detalles;
        }

        public DUDetallesProducto PrecioProducto(DUDetallesProducto pro, String precio, String cantidad)
        {

            DUDetallesProducto detalles = pro;
            if (detalles.Disponibles > 0)
            {
                detalles.Mensaje = "" + detalles.Disponibles;
                Double total = Double.Parse(precio) * int.Parse(cantidad);
                detalles.Total = "" + total;
            }
            else
            {
                detalles.Mensaje = "producto no disponible.";
                detalles.Total = null;
            }
            return detalles;
        }


    }
}
