using System.Data.Entity;
using DBUtilitarios;

namespace DBData
{
    public class Mapeo : DbContext
    {
        static Mapeo()
        {
            Database.SetInitializer<Mapeo>(null);
        }
        private readonly string schema;

        public Mapeo(string schema)
            : base("name=SQLTractoVega")
        {
            this.schema = schema;
        }

        public DbSet<DUCategoria> uCategoria { get; set; }
        public DbSet<DUCarrito> uCarrito { get; set; }
        public DbSet<DUPedidos> uPedidos { get; set; }
        public DbSet<DUPedidoProducto> uPedidoProducto{ get; set; }
        public DbSet<DUProducto> uProducto { get; set; }
        public DbSet<DUProveedor> uProveedor{ get; set; }
        public DbSet<DUUsuario> uUsuario { get; set; }
        public DbSet<DUTokenRepureacionUsuario> uTokenRepureacionUsuario { get; set; }
        public DbSet<DUFormulario> uFormulario { get; set; }
        public DbSet<DUControles> uControles { get; set; }
        public DbSet<DUIdioma> uIdioma { get; set; }
        public DbSet<DUAuthentication> uAuthentications { get; set; }
        public DbSet<DUAuditoria> uAuditoria { get; set; }
        public DbSet<DUConfig> uConfig { get; set; }
        public DbSet<DUInicio> uInicio { get; set; }
        public DbSet<DUServicios> uServicios { get; set; }
        public DbSet<DUContacto> uContacto { get; set; }


        protected override void OnModelCreating(DbModelBuilder builder)
        {
            builder.HasDefaultSchema(this.schema);

            base.OnModelCreating(builder);
        }
    }
}