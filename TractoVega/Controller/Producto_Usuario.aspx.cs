using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBUtilitarios;
using DBLogica;

public partial class View_Usuario_Producto_Usuario : System.Web.UI.Page
{
    Double total;
    Int32 Disponibles;
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 24;

        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            LE_Precio.Text = compIdioma["LE_Precio"].ToString();
            LE_Disponible.Text = compIdioma["LE_Disponible"].ToString();
            LE_Cantidad.Text = compIdioma["LE_Cantidad"].ToString();
            LE_Total.Text = compIdioma["LE_Total"].ToString();
            LE_Ficha.Text = compIdioma["LE_Ficha"].ToString();


            BTN_Agregar.Text = compIdioma["BTN_Agregar"].ToString();
        }
        catch
        {

        }

        try
        {
            Int32 id = int.Parse(Session["idProducto"].ToString());
            DLProducto detalles = new DLProducto();
            DUDetallesProducto producto = new DUDetallesProducto();

            producto = detalles.DetallesProducto(id);
            L_Nombre.Text = producto.Nombre;
            L_Descripcion.Text = producto.Descripcion;
            L_Precio.Text = producto.Precio;
            IMG_Foto.ImageUrl = producto.Foto;
            IMG_Ficha.ImageUrl = producto.Ficha;
            detalles.PrecioProducto(producto, L_Precio.Text, TB_Cantidad.Text);

            TB_Slider_SliderExtender.Maximum = producto.Disponibles;
            Disponibles = producto.Disponibles;
            try
            {
                L_Disponible.Text = producto.Mensaje;
                String total1 = producto.Total;
                total = double.Parse(total1);
                L_Total.Text = "" + total;
            }
            catch
            {
                L_Disponible.Text = producto.Mensaje;
                TB_Cantidad.Enabled = false;
                L_Total.Text = "0";
            }
        }
        catch
        {
            Response.Redirect("~/View/Login_Visitante.aspx");
        }


    }

    protected void BTN_Agregar_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;

        Int32 id = int.Parse(Session["idProducto"].ToString());
        DLProducto detalles = new DLProducto();
        DUDetallesProducto producto = new DUDetallesProducto();

        producto = detalles.DetallesProducto(id);
        if (int.Parse(TB_Cantidad.Text)<= producto.Disponibles)
        {
            DUCarrito carrito = new DUCarrito();
            

            carrito.UsuarioId = int.Parse(Session["user_id"].ToString());
            carrito.ProductoId = int.Parse(Session["idProducto"].ToString());
            carrito.Cantidad = int.Parse(TB_Cantidad.Text);
            carrito.Total = total;
            carrito.Session = Session.SessionID;
            carrito.LastModifiend = DateTime.Now;

            DLCarrito insertar = new DLCarrito();
            insertar.insertarCarrito(carrito);

            
            
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Se agrego al carrito correctamente.');window.location=\"Catalogo_Usuario.aspx\"</script>");


        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Cantidad no disponible')", true);
        }

       

    }
}