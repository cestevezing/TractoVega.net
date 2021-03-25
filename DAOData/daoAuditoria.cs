using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using DBData;
using DBUtilitarios;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace DAOData
{
    public class daoAuditoria
    {
        public static void add(DUAuditoria eAuditoria)
        {
            using (var db = new Mapeo("security"))
            {
                eAuditoria.Pk = "0";
                db.uAuditoria.Add(eAuditoria);
                db.SaveChanges();
            }
        }

        public static void insert(Object obj, string session, string esquema, string tabla)
        {
            DUAuditoria eAuditoria = new DUAuditoria();
            eAuditoria.Fecha = DateTime.Now;
            eAuditoria.Accion = "INSERT";
            eAuditoria.UserBd = "Postgres";
            eAuditoria.Schema = esquema;
            eAuditoria.Tabla = tabla;
            eAuditoria.Session = session;

            JObject jObject = new JObject();

            foreach (PropertyInfo propertyInfo in obj.GetType().GetProperties())
            {
                if (propertyInfo.PropertyType == typeof(string) || propertyInfo.PropertyType == typeof(int) || propertyInfo.PropertyType == typeof(Boolean))
                {
                    jObject[propertyInfo.Name] = propertyInfo.GetValue(obj).ToString();
                }
            }

            eAuditoria.Data = JsonConvert.SerializeObject(jObject);
            daoAuditoria.add(eAuditoria);
        }

        public static void update(Object newObj, Object oldObj, string session, string esquema, string tabla)
        {
            DUAuditoria eAuditoria = new DUAuditoria();
            eAuditoria.Fecha = DateTime.Now;
            eAuditoria.Accion = "UPDATE";
            eAuditoria.UserBd = "Postgres";
            eAuditoria.Schema = esquema;
            eAuditoria.Tabla = tabla;
            eAuditoria.Session = session;

            JObject jObject = new JObject();

            Boolean sinCambios = true;

            foreach (PropertyInfo propertyInfo in newObj.GetType().GetProperties())
            {
                if (propertyInfo.PropertyType == typeof(string) || propertyInfo.PropertyType == typeof(int) || propertyInfo.PropertyType == typeof(Boolean))
                {
                    if (propertyInfo.Name.Equals("Id"))
                    {
                        jObject[propertyInfo.Name] = propertyInfo.GetValue(newObj).ToString();
                    }
                    if (!propertyInfo.GetValue(newObj).ToString().Equals(propertyInfo.GetValue(oldObj).ToString()) && !propertyInfo.Name.Equals("IdAcceso"))
                    {
                        jObject["new_" + propertyInfo.Name] = propertyInfo.GetValue(newObj).ToString();
                        jObject["old_" + propertyInfo.Name] = propertyInfo.GetValue(oldObj).ToString();
                        sinCambios = false;
                    }
                }
                else if (propertyInfo.PropertyType == typeof(List<int>) && !JsonConvert.SerializeObject(propertyInfo.GetValue(newObj)).Equals(JsonConvert.SerializeObject(propertyInfo.GetValue(oldObj))))
                {
                    jObject["new_" + propertyInfo.Name] = JsonConvert.SerializeObject(propertyInfo.GetValue(newObj));
                    jObject["old_" + propertyInfo.Name] = JsonConvert.SerializeObject(propertyInfo.GetValue(oldObj));
                    sinCambios = false;
                }
            }

            if (sinCambios)
            {
                return;
            }

            eAuditoria.Data = JsonConvert.SerializeObject(jObject);
            daoAuditoria.add(eAuditoria);
        }

        public static void delete(Object obj, string session, string esquema, string tabla)
        {
            DUAuditoria eAuditoria = new DUAuditoria();
            eAuditoria.Fecha = DateTime.Now;
            eAuditoria.Accion = "DELETE";
            eAuditoria.UserBd = "Postgres";
            eAuditoria.Schema = esquema;
            eAuditoria.Tabla = tabla;
            eAuditoria.Session = session;

            JObject jObject = new JObject();

            foreach (PropertyInfo propertyInfo in obj.GetType().GetProperties())
            {
                if (propertyInfo.PropertyType == typeof(string) || propertyInfo.PropertyType == typeof(int) || propertyInfo.PropertyType == typeof(Boolean))
                {
                    jObject[propertyInfo.Name] = propertyInfo.GetValue(obj).ToString();
                }
            }

            eAuditoria.Data = JsonConvert.SerializeObject(jObject);
            daoAuditoria.add(eAuditoria);
        }
    }
}
