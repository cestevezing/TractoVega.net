using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBUtilitarios;
using DAOData;
using Newtonsoft.Json;
using System.Security.Cryptography;

namespace DBLogica
{
    public class DLTokenRecuperacionUsuario
    {
        public string GeneraToken(string usuario)
        {
            string alerta = "";

            daoTokenRepureacionUsuario dao = new daoTokenRepureacionUsuario();
            DUUsuario validez = dao.validarToken(usuario,DateTime.Now);
            if (validez.Id > 0)
            {
                DUUserToken token = new DUUserToken();
                token.Id = validez.Id;
                token.Nombre = validez.Nombre;
                token.User_name = validez.UserName;
                token.Estado = validez.Estado;
                token.Correo = validez.Correo;
                token.Fecha = DateTime.Now.ToFileTimeUtc();

                String userToken = encriptar(JsonConvert.SerializeObject(token));
                dao.almacenarToken(userToken, token.Id);

                DUCorreo correo = new DUCorreo();

                String mensaje = "su link de acceso es: " + "http://tractovega.ddns.net/View/RecuperarContraseña.aspx?" + userToken;
                correo.enviarCorreo(token.Correo, userToken, mensaje);

                alerta = "Su nueva contraseña ha sido enviada a su correo";
            }
            else if (validez.Id == -2)
            {
                alerta = "Ya existe un token, por favor verifique su correo.";
            }
            else
            {
                alerta = "El usurio digitado no existe";
            }
            return alerta;
        }

        private string encriptar(string input)
        {
            SHA256CryptoServiceProvider provider = new SHA256CryptoServiceProvider();

            byte[] inputBytes = Encoding.UTF8.GetBytes(input);
            byte[] hashedBytes = provider.ComputeHash(inputBytes);

            StringBuilder output = new StringBuilder();

            for (int i = 0; i < hashedBytes.Length; i++)
                output.Append(hashedBytes[i].ToString("x2").ToLower());

            return output.ToString();
        }
        //valida que se halla recibido el token como parametro
        public DUConfirmarToken ValidarUsuarioToken(String token)
        {
            DUConfirmarToken confirmar = new DUConfirmarToken();
            if (token.Length > 0)
            {
                daoTokenRepureacionUsuario user = new daoTokenRepureacionUsuario();
                DUTokenRepureacionUsuario info = user.obtenerUsusarioToken(token,DateTime.Now);

                if (info.Id == -1)
                {
                    confirmar.Mensaje = "El Token es invalido. Genere uno nuevo";
                    confirmar.Url = "Login_Visitante.aspx";

                }
                else if (info.Id == -2)
                {
                    confirmar.Mensaje = "El Token esta vencido. Genere uno nuevo";
                    confirmar.Url = "Login_Visitante.aspx";
                }
                else
                {
                    confirmar.Mensaje = null;
                    confirmar.Id = ""+info.Id;
                }

            }

            else
            {
                confirmar.Mensaje = "no se a iniciado sesion";
                confirmar.Url = "Login_Visitante.aspx";

            }
            return confirmar;
        }

        public void ActulizarClave(DUConexion user)
        {
            daoTokenRepureacionUsuario dao = new daoTokenRepureacionUsuario();
            dao.ActulizarClave(user);

        }
    }
}
