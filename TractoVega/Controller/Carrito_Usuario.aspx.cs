using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLogica;
using DBUtilitarios;


public partial class View_Usuario_Carrito_Usuario : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 1;
        
        DLControles datos = new DLControles();

        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        try
        {
            Session["compIdioma"] = compIdioma;

            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            BTN_Pedido.Text = compIdioma["BTN_Pedido"].ToString();
            GV_Carrito.Columns[0].HeaderText = compIdioma["GV_Carrito_Foto"].ToString();
            GV_Carrito.Columns[1].HeaderText = compIdioma["GV_Carrito_Referencia"].ToString();
            GV_Carrito.Columns[2].HeaderText = compIdioma["GV_Carrito_Nombre"].ToString();
            GV_Carrito.Columns[3].HeaderText = compIdioma["GV_Carrito_PrecioUnitario"].ToString();
            GV_Carrito.Columns[4].HeaderText = compIdioma["GV_Carrito_Cantidad"].ToString();
            GV_Carrito.Columns[5].HeaderText = compIdioma["GV_Carrito_Total"].ToString();

        }
        catch
        {

        }

        

        try
        {
            DLCarrito validar = new DLCarrito();
            Int32 a;
            a =int.Parse( validar.validarCarrito(int.Parse(Session["user_id"].ToString())));
        }
        catch
        {
            BTN_Pedido.Visible = false;
            L_Mensaje.Text = compIdioma["L_Mensaje"].ToString(); ;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Button eliminar = (Button)sender;
        DLCarrito elimina = new DLCarrito();
        elimina.eliminarCarrito(int.Parse(eliminar.CommandArgument.ToString()),Session.SessionID);

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Se elimino correctamente')", true);
        Response.Redirect("~/View/Carrito_Usuario.aspx");

    }

    protected void BTN_Pedido_Click(object sender, EventArgs e)
    {
        DUPedidos ped = new DUPedidos();
        DLPedidos pedido = new DLPedidos();

        Int32 id = int.Parse(Session["user_id"].ToString());
        String user = Session.SessionID;

        ped.Usuarioid = id;
        ped.Session = user;

        Session["Pedido"] = pedido.generarPedido(ped);
        Response.Redirect("~/View/Reporte_Pedido.aspx");

    }

    protected void GV_Carrito_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
           ((Button)e.Row.FindControl("BTN_Eliminar")).Text =  ((Hashtable)Session["compIdioma"])["BTN_Eliminar"].ToString();
            
        }
        catch 
        {
        }

    }

}