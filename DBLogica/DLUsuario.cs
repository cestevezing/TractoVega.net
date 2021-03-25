using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAOData;
using DBUtilitarios;

namespace DBLogica
{
    public class DLUsuario
    {
        public List<DUUsuario> perfilUsuario(Int32 id)
        {
            daoUsuario dao = new daoUsuario();
            return dao.perfilUsuario(id);

        }

        public void actualizarUsuario(DUUsuario usuario)
        {
            daoUsuario dao = new daoUsuario();
            dao.actualizarUsuario(usuario);
        }

        public List<DUUsuario> obtenerUsuarios(String nombre)
        {
            daoUsuario dao = new daoUsuario();
            return dao.obtenerUsuarios(nombre);
        }

        public DUMensajes agregarUsuario(DUUsuario user)
        {
            DUMensajes mensajes = new DUMensajes();
            daoUsuario validar = new daoUsuario();

            List<DUUsuario> data = validar.usuarioRepetido(user);

            if (data.Count > 0)
            {
                mensajes.Mensaje = "El user name ya existe.";
                mensajes.Url = "Registro_Visitante.aspx";
            }
            else
            {
                validar.agregarUsuario(user);

                mensajes.Mensaje = "Ha sido registrado exitosamente.";
                mensajes.Url = "Login_Visitante.aspx";
            }

            return mensajes;

        }

        //valida y inicia sesion de usuario 
        public DULoggin IniciarSesion(DULoggin login)
        {
            DULoggin usuario = new DULoggin();
            daoUsuario datos = new daoUsuario();
            daoAuthentication auten = new daoAuthentication();

            try
            {
                
                DUUsuario tabla = datos.loginVisitante(login);
            

                Int32 id = tabla.Id;
            
                if (id > 0)
                {
                    usuario.Nombre = tabla.Nombre;
                    usuario.UserId = ""+tabla.Id;
                    usuario.Rol = ""+tabla.Rol;

                    DUAuthentication datosUsuario = new DUAuthentication();
                    DUMac datosConexion = new DUMac();

                    /* ipAddress = HttpContext.Current.Request.UserHostAddress;
                     mac = Utilidades.Mac.GetMAC(ref ipAddress);*/

                    datosUsuario.UserId = tabla.Id;
                    datosUsuario.Ip = datosConexion.ip();
                    datosUsuario.Mac = datosConexion.mac();
                    datosUsuario.Session = login.Session;
                    datosUsuario.FechaInicio = DateTime.Now;

                    auten.guardadoSession(datosUsuario);
                    if (tabla.Rol == 1)
                    {
                        usuario.Url = "~/View/Inicio_Usuario.aspx";
                        usuario.Mensaje = "Bienvenido";
                    }
                    else
                    {
                        usuario.Url = "~/View/Inicio_Admin.aspx";
                        usuario.Mensaje = "Bienvenido";
                    }
                }
                else if (id == -1)
                {
                    usuario.Url = "~/View/Login_Visitante.aspx";
                    usuario.Mensaje = "Maximo usuarios activos.";
                }
                else if (id == -2)
                {
                    usuario.Url = "~/View/Login_Visitante.aspx";
                    usuario.Mensaje = "Usuario Bloqueado intente mas tarde.";
                }
                else
                {
                    usuario.Url = "~/View/Login_Visitante.aspx";
                    usuario.Mensaje = "Usuario o contraseña incorrectas.";
                }

                return usuario;
                }
            catch
            {
                usuario.Url = "~/View/Login_Visitante.aspx";
                usuario.Mensaje = "Usuario o contraseña incorrectas.";
                return usuario;
            }
        }

    }
}
