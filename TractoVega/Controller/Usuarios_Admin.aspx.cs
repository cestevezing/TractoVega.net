using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;

public partial class View_Admin_Usuarios_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 32;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            L_User.Text = compIdioma["L_User"].ToString();
            REV_User.Text = compIdioma["REV_User"].ToString();

            GV_Usuarios.Columns[0].HeaderText = compIdioma["GV_Usuarios_Nombre"].ToString();
            GV_Usuarios.Columns[1].HeaderText = compIdioma["GV_Usuarios_Direccion"].ToString();
            GV_Usuarios.Columns[2].HeaderText = compIdioma["GV_Usuarios_Telefono"].ToString();
            GV_Usuarios.Columns[3].HeaderText = compIdioma["GV_Usuarios_Correo"].ToString();
            GV_Usuarios.Columns[4].HeaderText = compIdioma["GV_Usuarios_User"].ToString();
            GV_Usuarios.Columns[5].HeaderText = compIdioma["GV_Usuarios_Rol"].ToString();
        }
        catch
        {

        }
        
    }


}