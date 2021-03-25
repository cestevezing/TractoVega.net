using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAOData;
using DBUtilitarios;


namespace DBLogica
{
    public class DLProveedor
    {
        public List<DUProveedor> obtenerProveedores()
        {
            daoProveedor dao = new daoProveedor();
            return dao.obtenerProveedores();
        }

        public List<DUProveedor> obtenerProveedorModificar(Int32 id)
        {
            daoProveedor dao = new daoProveedor();
            return dao.obtenerProveedorModificar(id);
        }

        public void actualizarProveedor(DUProveedor proveedor)
        {
            daoProveedor dao = new daoProveedor();
            dao.actualizarProveedor(proveedor);

        }

        public void insertarProveedor(DUProveedor proveedor)
        {
            daoProveedor dao = new daoProveedor();
            dao.insertarProveedor(proveedor);
        }

        public List<DUProveedor> obtenerProveedorAdmin(String nombre)
        {
            daoProveedor dao = new daoProveedor();
            return dao.obtenerProveedorAdmin(nombre);

        }

        public void eliminarProveedor(int id,string session)
        {
            daoProveedor dao = new daoProveedor();
            dao.eliminarProveedor(id,session);
        }

    }
}
