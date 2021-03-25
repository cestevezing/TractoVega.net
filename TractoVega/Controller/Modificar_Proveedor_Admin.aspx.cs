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

public partial class View_Admin_Modificar_Proveedor_Admin : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 formulario = 15;

        DLControles data = new DLControles();

        Hashtable compIdioma = data.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));
        Session["compIdioma"] = compIdioma;

        L_Referencia.Text = compIdioma["L_Referencia"].ToString();
        L_Nombre.Text = compIdioma["L_Nombre"].ToString();
        L_Telefono.Text = compIdioma["L_Telefono"].ToString();
        L_Correo.Text = compIdioma["L_Correo"].ToString();
        L_Direccion.Text = compIdioma["L_Direccion"].ToString();
        REV_Nombre.ErrorMessage= compIdioma["REV"].ToString();
        REV_Telefono.ErrorMessage = compIdioma["REV"].ToString();
        REV_Correo.ErrorMessage = compIdioma["REV"].ToString();
        REV_Direccion.ErrorMessage = compIdioma["REV"].ToString();
        BTN_Guardar.Text = compIdioma["BTN_Guardar"].ToString();
        L_Titulo.Text = compIdioma["L_Titulo"].ToString();

        
        try {

            DLValidaciones validar = new DLValidaciones();
            Int32 valor = int.Parse(validar.ValidarPostBack(IsPostBack));

            try{

                Int32 a =  int.Parse(Session["Accion"].ToString());
                
                BTN_Guardar_ConfirmButtonExtender.ConfirmText = "¿Desea realizar cambios?";   
                
                Int32 id = int.Parse(Session["Proveedor_M"].ToString());

                DLProveedor datos = new DLProveedor();
                DUProveedor proveedor = datos.obtenerProveedorModificar(id).First();

                TB_Referencia.Text = ""+proveedor.Id;
                TB_Referencia.Enabled = false;
                TB_Nombre.Text = proveedor.Nombre;
                TB_Telefono.Text = proveedor.Telefono;
                TB_Correo.Text = proveedor.Correo;
                TB_Direccion.Text = proveedor.Direccion;


            }catch
            {
                BTN_Guardar_ConfirmButtonExtender.ConfirmText = "¿Desea agregar nuevo elemento?";
                TB_Referencia.Visible = false;
                L_Referencia.Visible = false;
            }
        }
        catch
        {

        }
    }

    protected void BTN_Guardar_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        try { 

            Int32 a = int.Parse(Session["Accion"].ToString());
        
            DUProveedor proveedor = new DUProveedor();

            proveedor.Id = int.Parse(TB_Referencia.Text);
            proveedor.Nombre = TB_Nombre.Text;
            proveedor.Telefono = TB_Telefono.Text;
            proveedor.Correo = TB_Correo.Text;
            proveedor.Direccion = TB_Direccion.Text;
            proveedor.Session = Session.SessionID;
            proveedor.LastModifiend = DateTime.Now;

            DLProveedor datos = new DLProveedor();
            datos.actualizarProveedor(proveedor);


            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Se modifico exitosamente.');window.location=\"Proveedores_Admin.aspx\"</script>");


        }catch
        {
            DUProveedor proveedor = new DUProveedor();

            
            proveedor.Nombre = TB_Nombre.Text;
            proveedor.Telefono = TB_Telefono.Text;
            proveedor.Correo = TB_Correo.Text;
            proveedor.Correo = TB_Direccion.Text;
            proveedor.Session = Session.SessionID;

            DLProveedor datos = new DLProveedor();
            datos.insertarProveedor(proveedor);


            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Se creo exitosamente.');window.location=\"Proveedores_Admin.aspx\"</script>");

        }
    }
}