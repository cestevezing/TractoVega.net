using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBUtilitarios;
using DBLogica;

public partial class View_Admin_Modificar_Inventario_Admin : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 14;


        DLControles data = new DLControles();

        Hashtable compIdioma = data.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            L_Referencia.Text = compIdioma["L_Referencia"].ToString();
            L_Nombre.Text = compIdioma["L_Nombre"].ToString();
            L_Precio.Text = compIdioma["L_Precio"].ToString();
            L_Descripcion.Text = compIdioma["L_Descripcion"].ToString();
            L_Foto.Text = compIdioma["L_Foto"].ToString();
            L_Ficha.Text = compIdioma["L_Ficha"].ToString();
            L_Proveedor.Text = compIdioma["L_Proveedor"].ToString();
            L_Categoria.Text = compIdioma["L_Categoria"].ToString();
            L_Cantidad.Text = compIdioma["L_Cantidad"].ToString();
            L_CantidadMin.Text = compIdioma["L_CantidadMin"].ToString();
            REV_Nombre.ErrorMessage = compIdioma["REV_Nombre"].ToString();
            REV_Precio.ErrorMessage = compIdioma["REV_Precio"].ToString();
            REV_Descripcion.ErrorMessage = compIdioma["REV_Descripcion"].ToString();
            RV_Proveedor.ErrorMessage = compIdioma["RV_Proveedor"].ToString();
            RV_Categoria.ErrorMessage = compIdioma["RV_Categoria"].ToString();
            REV_Cantidad.ErrorMessage = compIdioma["REV_Cantidad"].ToString();
            REV_CantidadMin.ErrorMessage = compIdioma["REV_CantidadMin"].ToString();
            BTN_Guardar.Text = compIdioma["BTN_Guardar"].ToString();
            L_Accion.Text = compIdioma["L_Accion"].ToString();
        }
        catch
        {

        }
        DLValidaciones validar = new DLValidaciones();

        try {
            Int32 a = int.Parse(validar.ValidarPostBack(IsPostBack));

            try
            {
                Int32 p = int.Parse(Session["Accion"].ToString());
                Int32 id = int.Parse(Session["Producto_M"].ToString());

                BTN_Guardar_ConfirmButtonExtender.ConfirmText = "¿Desea realizar cambios?";

                DLProducto datos = new DLProducto();
                DUProducto producto = datos.obtenerModificarProducto(id).First();


                TB_Referencia.Text = "" + producto.Id;
                TB_Referencia.Enabled = false;
                TB_Nombre.Text = producto.Nombre;
                TB_Precio.Text = ""+ producto.Precio;
                TB_Descripcion.Text = producto.Descripcion;
                IMG_Foto.ImageUrl = producto.Foto;
                IMG_Ficha.ImageUrl = producto.FichaTecnica;
                DDL_Proveedor.SelectedValue = ""+producto.ProveedorId;
                DDL_Categoria.SelectedValue = ""+producto.CategoriaId;
                TB_Cantidad.Text = ""+ producto.Cantidad;
                TB_CantidadMin.Text = ""+ producto.CantidadMinima;


            }
            catch
            {
                BTN_Guardar_ConfirmButtonExtender.ConfirmText = "¿Desea agregar nuevo elemento?";
                TB_Referencia.Visible = false;
                L_Referencia.Visible = false;                    
                IMG_Ficha.ImageUrl = "0";
                IMG_Foto.ImageUrl = "0";
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
            DUProducto producto = new DUProducto
            {
                Id = int.Parse(TB_Referencia.Text),
                Nombre = TB_Nombre.Text,
                Precio = double.Parse(TB_Precio.Text),
                Descripcion = TB_Descripcion.Text
            };

            String nombreFoto = Path.GetFileName(IMG_Foto.ImageUrl.ToString());
            String nombreFicha = Path.GetFileName(IMG_Ficha.ImageUrl.ToString());

            try
            {
                DLValidaciones validar = new DLValidaciones();
                Int32 a = int.Parse(validar.validarFoto(FU_Foto.PostedFile.FileName, nombreFoto));
                producto.Foto = CargarFoto();
            }
            catch
            {
                producto.Foto = IMG_Foto.ImageUrl.ToString();
            }

            try
            {
                DLValidaciones validar = new DLValidaciones();
                Int32 a = int.Parse(validar.validarFoto(FU_Ficha.PostedFile.FileName, nombreFicha));
                producto.FichaTecnica = CargarFoto();
            }
            catch
            {
                producto.FichaTecnica = IMG_Foto.ImageUrl.ToString();
            }

            producto.ProveedorId = int.Parse( DDL_Proveedor.SelectedValue);
            producto.CategoriaId = int.Parse(DDL_Categoria.SelectedValue);
            producto.Cantidad = int.Parse(TB_Cantidad.Text);
            producto.CantidadMinima = int.Parse(TB_CantidadMin.Text);
            producto.Session = Session.SessionID;
            producto.LastModifiend = DateTime.Now;

            DLProducto dL = new DLProducto();
            dL.actualizarProducto(producto);

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Se modifico exitosamente.');window.location=\"Inventario_Admin.aspx\"</script>");


        }
        catch
        {
            DUProducto producto = new DUProducto
            {
                Nombre = TB_Nombre.Text,
                Precio = double.Parse(TB_Precio.Text),
                Descripcion = TB_Descripcion.Text
            };


            if (System.IO.Path.GetFileName(FU_Foto.PostedFile.FileName) != "")
            {
                producto.Foto = CargarFoto();
            }
            else
            {
                producto.Foto = "";

            }
            if (System.IO.Path.GetFileName(FU_Ficha.PostedFile.FileName) != "" )
            {
                producto.FichaTecnica = CargarFicha();
            }
            else
            {
                producto.FichaTecnica = "";

            }

            producto.ProveedorId = int.Parse(DDL_Proveedor.SelectedValue);
            producto.CategoriaId = int.Parse(DDL_Categoria.SelectedValue);
            producto.Cantidad = int.Parse(TB_Cantidad.Text);
            producto.CantidadMinima = int.Parse(TB_CantidadMin.Text);
            producto.Session = Session.SessionID;
            producto.LastModifiend = DateTime.Now;


            DLProducto dL = new DLProducto();
            dL.insertarProducto(producto);

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Se creo exitosamente.');</script>");

            Response.Redirect("~/View/Inventario_Admin.aspx");

        }
    }

    protected String CargarFoto()
    {
        ClientScriptManager cm = this.ClientScript;
        String nombreArchivo = System.IO.Path.GetFileName(FU_Foto.PostedFile.FileName);
        String extension = System.IO.Path.GetExtension(FU_Foto.PostedFile.FileName);
        String saveLocation = "";

        try
        {
            DLValidaciones validar = new DLValidaciones();
            saveLocation = Server.MapPath("~\\Archivos") + "\\" + nombreArchivo;
            validar.validarExtencion(extension, saveLocation);
            FU_Foto.PostedFile.SaveAs(saveLocation);
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El archivo de imagen ha sido cargado');</script>");

            return "~\\Archivos" + "\\" + nombreArchivo;
        }
        catch
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Solo se admiten imagenes en formato Jpeg o Gif');</script>");
            return null;
        }

    }


    protected String CargarFicha()
    {
        ClientScriptManager cm = this.ClientScript;
        String nombreArchivo = System.IO.Path.GetFileName(FU_Ficha.PostedFile.FileName);
        String extension = System.IO.Path.GetExtension(FU_Ficha.PostedFile.FileName);
        String saveLocation = "";

        try
        {
            DLValidaciones validar = new DLValidaciones();
            saveLocation = Server.MapPath("~\\Archivos") + "\\" + nombreArchivo;
            validar.validarExtencion(extension, saveLocation);
            FU_Ficha.PostedFile.SaveAs(saveLocation);
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