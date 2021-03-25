using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;
using DBUtilitarios;


public partial class View_Admin_Modificar_Categoria_Admin : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 13;
        
        DLControles data = new DLControles();

        Hashtable compIdioma = data.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            L_Referencia.Text = compIdioma["L_Referencia"].ToString();
            L_Nombre.Text = compIdioma["L_Nombre"].ToString();
            L_Foto.Text = compIdioma["L_Foto"].ToString();
            REV_Nombre.ErrorMessage = compIdioma["REV_Nombre"].ToString();
            BTN_Guardar.Text = compIdioma["BTN_Guardar"].ToString();
            L_Accion.Text = compIdioma["L_Accion"].ToString();
        }
        catch
        {

        }
        DLValidaciones validar = new DLValidaciones();

        try
        {
            Int32 a = int.Parse(validar.ValidarPostBack(IsPostBack));

            try
            {
                int p = int.Parse(Session["Accion"].ToString());
                Int32 id = int.Parse(Session["Categoria_M"].ToString());

                BTN_Guardar_ConfirmButtonExtender.ConfirmText = "¿Desea realizar cambios?";
                DUCategoria categoria = new DUCategoria();
                DLCategoria datos = new DLCategoria();

                categoria = datos.obtenerCategoriaModificar(id).First();

                RFV.Enabled = false;
                TB_Referencia.Text = "" + categoria.Id;
                TB_Referencia.Enabled = false;
                TB_Fun.Text = categoria.Nombre;
                IMG_Categoria.ImageUrl = categoria.Foto;

            }
            catch
            {
                BTN_Guardar_ConfirmButtonExtender.ConfirmText = "¿Desea agregar nuevo elemento?";
                TB_Referencia.Visible = false;
                L_Referencia.Visible = false;
                IMG_Categoria.ImageUrl = "o";
            }

        }
        catch
        {

        }
        
    }



    protected void BTN_Guardar_Click(object sender, EventArgs e)

    {
        ClientScriptManager cm = this.ClientScript;
        try
        {
            Int32 valo = int.Parse(Session["Accion"].ToString());
            Int32 id;
            String nombre, foto;
            id = int.Parse(TB_Referencia.Text);
            nombre = TB_Fun.Text.ToString();
            
            String nombreFoto = Path.GetFileName(IMG_Categoria.ImageUrl.ToString());

            try
            {
                DLValidaciones validar = new DLValidaciones();
                Int32 a = int.Parse( validar.validarFoto(FL_Foto.PostedFile.FileName, nombreFoto));
                foto = cargarImagen();
            }
            catch
            {
                foto = IMG_Categoria.ImageUrl.ToString();
            }

            DUCategoria categoria = new DUCategoria();
            categoria.Id = id;
            categoria.Nombre = nombre;
            categoria.Foto = foto;
            categoria.Session = Session.SessionID;

            DLCategoria datos = new DLCategoria();
            datos.modificarCategoia(categoria);
                      
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Se modifico correctamente');window.location=\"Categorias_Admin.aspx\"</script>");

        }
        catch
        {
            
            DUCategoria categoria = new DUCategoria();
            categoria.Nombre = TB_Fun.Text.ToString();
            categoria.Foto = cargarImagen();
            categoria.Session = Session.SessionID;
            categoria.LastModifiend = DateTime.Now;

            DLCategoria datos = new DLCategoria();
            datos.agregarCategoria(categoria);

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Se modifico correctamente');window.location=\"Categorias_Admin.aspx\"</script>");
        }
    }

    protected String cargarImagen()
    {
        ClientScriptManager cm = this.ClientScript;
        String nombreArchivo = System.IO.Path.GetFileName(FL_Foto.PostedFile.FileName);
        String extension = System.IO.Path.GetExtension(FL_Foto.PostedFile.FileName);
        String saveLocation = "";


        try
        {
            DLValidaciones validar = new DLValidaciones();
            saveLocation = Server.MapPath("~\\Archivos") + "\\" + nombreArchivo;
            validar.validarExtencion(extension,saveLocation);
            FL_Foto.PostedFile.SaveAs(saveLocation);
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El archivo de imagen ha sido cargado');</script>");

            return "~\\Archivos" + "\\" + nombreArchivo;
        }
        catch
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Solo se admiten imagenes en formato Jpeg o Gif');</script>");
            return null;
        }

        
    }
}