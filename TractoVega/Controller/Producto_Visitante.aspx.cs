using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;
using DBUtilitarios;

public partial class View_Visitante_Producto_Visitante : System.Web.UI.Page
{
    
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

            TB_Slider_SliderExtender.Maximum = producto.Disponibles ;


            try
            {
                L_Disponible.Text = producto.Mensaje;
                String total = producto.Total;
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

        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Debe iniciar sesion.');window.location=\"Login_Visitante.aspx\"</script>");


    }
}