using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DBData;
using DBUtilitarios;

/// <summary>
/// Descripción breve de Consultas
/// </summary>
public class Consultas
{
    public static List<ViewCategoria> Categorias()
    {
        using (var db = new Mapeo("usuario"))
        {
            var datos = (
                from c in db.uCategoria
                where c.Id == 0
                select new ViewCategoria
                {
                    Nombre = c.Nombre,
                    Foto = c.Foto
                }

             ).ToList();

            return datos;

        }
    }

    public static List<ViewProveedor> Proveedores()
    {
        using (var db = new Mapeo("usuario"))
        {
            var datos = (
                from c in db.uProveedor
                where c.Id == 0
                select new ViewProveedor
                {
                    Nombre = c.Nombre,
                    Telefono = c.Telefono,
                    Correo = c.Correo,
                    Direccion = c.Direccion
                }

             ).ToList();

            return datos;

        }
    }

    public static List<ViewProducto> Productos()
    {
        using (var db = new Mapeo("usuario"))
        {
            var datos = (
                from c in db.uProducto
                select new ViewProducto
                {
                    Nombre = c.Nombre,
                    Precio = c.Precio,
                    Descripcion = c.Descripcion,
                    Foto = c.Foto
                }

             ).ToList();

            return datos;

        }
    }

    public static List<ViewProducto> BuscarProductos(string buscar)
    {
        using (var db = new Mapeo("usuario"))
        {
            if (buscar == "-1")
            {
                var datos = (
                from c in db.uProducto
                select new ViewProducto
                {
                    Nombre = c.Nombre,
                    Precio = c.Precio,
                    Descripcion = c.Descripcion,
                    Foto = c.Foto
                }

             ).ToList();

                return datos;

            }
            else
            {
                var datos = (
                from c in db.uProducto
                where c.Nombre.Contains(buscar)
                select new ViewProducto
                {
                    Nombre = c.Nombre,
                    Precio = c.Precio,
                    Descripcion = c.Descripcion,
                    Foto = c.Foto
                }

             ).ToList();

                return datos;
            }
        }
    }

    public static List<ViewUsuario> Usuarios()
    {
        using (var db = new Mapeo("usuario"))
        {
            var datos = (
                from c in db.uUsuario
                where c.Rol != 2
                select new ViewUsuario

                {
                    Nombre = c.Nombre,
                    Correo = c.Correo,
                    Direccion = c.Direccion,
                    Telefono = c.Telefono

                }
                ).ToList();
            return datos;

        }

    }
    public static void Contactenos(DUContacto con)
    {
        using (var db = new Mapeo("usuario"))
        {
            db.uContacto.Add(con);
            db.SaveChanges();
        }

    }
}