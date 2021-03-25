using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBUtilitarios;
using DAOData;

namespace DBLogica
{
    public class DLCategoria
    {
        public List<DUCategoria> obtenerCategorias(String id)
        {
            daoCategoria dao = new daoCategoria();
            return dao.obtenerCategorias(id);
        }


        public List<DUCategoria> categoriasDDL()
        {
            daoCategoria dao = new daoCategoria();
            return dao.categoriasDDL();
        }

        public void eliminarCategoria(Int32 id,string session)
        {
            daoCategoria dao = new daoCategoria();
            dao.eliminarCategoria(id,session);

        }

        public List<DUCategoria> obtenerCategoriaModificar(Int32 id)
        {
            daoCategoria dao = new daoCategoria();
            return dao.obtenerCategoriaModificar(id);
        }

        public void modificarCategoia(DUCategoria categoria)
        {
            daoCategoria dao = new daoCategoria();
            dao.modificarCategoria(categoria);
        }


        public void agregarCategoria(DUCategoria categoria)
        {
            daoCategoria dao = new daoCategoria();
            dao.agregarCategoria(categoria);
        }
    }
}
