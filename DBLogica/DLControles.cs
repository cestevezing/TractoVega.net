using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBUtilitarios;
using DAOData;
using System.Collections;

namespace DBLogica
{
    public class DLControles
    {
        public void insertarControl(DUControles control,string session)
        {
            daoControles dao = new daoControles();
            dao.insertarControl(control,session);

        }

        public Hashtable ObtenerIdiomaControles(Int32 formulario, Int32 idioma)
        {
            Hashtable datos = new Hashtable();
            daoControles dao = new daoControles();
            List<DUControles>  controles = dao.ObtenerIdiomaControles(formulario,idioma);

            foreach (DUControles con in controles)
            {
                datos.Add(con.Control,con.Texto);
            }


            return datos;
        }

        public void actualizarControles(Int32 id,String control, String texto, string session)
        {
            daoControles dao = new daoControles();
            dao.actualizarControles(id, texto, session);

        }

        public List<DUControles> ObtenerControles(Int32 formulario, Int32 idioma)
        {
            daoControles dao = new daoControles();
            List<DUControles> controles = dao.ObtenerControles(formulario, idioma);
                       
            return controles;
        }
    }
}
