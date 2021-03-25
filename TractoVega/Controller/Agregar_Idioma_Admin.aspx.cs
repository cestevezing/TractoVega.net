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

public partial class View_Agregar_Idioma_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Int32 formulario = 34;
        DLControles datos = new DLControles();
        
        Hashtable compIdioma = datos.ObtenerIdiomaControles(formulario, int.Parse(Session["idioma"].ToString()));

        try
        {
            Session["compIdioma"] = compIdioma;

            L_Titulo.Text = compIdioma["L_Titulo"].ToString();
            L_Formulario.Text = compIdioma["L_Formulario"].ToString();
            L_Idioma.Text = compIdioma["L_Idioma"].ToString();
            GV_Controles.Columns[0].HeaderText = compIdioma["GV_Controles_Control"].ToString();
            GV_Controles.Columns[1].HeaderText = compIdioma["GV_Controles_Idioma"].ToString();
            GV_Controles.Columns[2].HeaderText = compIdioma["GV_Controles_Formulario"].ToString();
            GV_Controles.Columns[3].HeaderText = compIdioma["GV_Controles_Texto"].ToString();
            BTN_Agregar.Text = compIdioma["BTN_Agregar"].ToString();

        }
        catch { }

        try
        {
            String a = GV_Controles.Rows[0].ToString();
        }
        catch
        {
            L_Mensaje.Text = L_Mensaje.Text = compIdioma["L_Titulo"].ToString(); 
        }
    }

    protected void GV_Controles_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        L_Mensaje.Text = "";

        try
        {
            ((Label)e.Row.FindControl("L_Idioma")).Text = DDL_Idioma.SelectedValue;

        }
        catch (Exception exx)
        {
        }
        try
        {
            ((Label)e.Row.FindControl("L_Formu")).Text = DDL_Formulario.SelectedValue;

        }
        catch (Exception exx)
        {
        }
    }

    protected void BTN_Agregar_Click(object sender, EventArgs e)
    {
        String control;
        Int32 idioma;
        Int32 form;
        String texto;
        try
        {
            Int32 a = int.Parse(((Label)GV_Controles.Rows[0].Cells[1].FindControl("L_Idioma")).Text);
            foreach (GridViewRow fila in this.GV_Controles.Rows)
            {

                control = fila.Cells[0].Text;
                idioma = int.Parse(((Label)fila.Cells[3].FindControl("L_Idioma")).Text);
                form = int.Parse(((Label)fila.Cells[3].FindControl("L_Formu")).Text);
                texto = ((TextBox)fila.Cells[3].FindControl("TB_Texto")).Text;

                DUControles data = new DUControles();
                data.Control = control;
                data.IdiomaId = idioma;
                data.FormularioId = form;
                data.Texto = texto;

                DLControles agregar = new DLControles();
                agregar.insertarControl(data,Session.SessionID);
                
            }
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Se agrego correctamente')", true);
            GV_Controles.DataBind();
        }
        catch
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No hay datos que agregar')", true);

        }
    }
}