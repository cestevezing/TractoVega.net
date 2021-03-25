using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAOData;

namespace DBLogica
{
    public class DLAuthentication
    {
        public void cerrarSession(string session,int user)
        {
            daoAuthentication dao = new daoAuthentication();
            dao.cerrarSession(session,user);

        }
    }
}
