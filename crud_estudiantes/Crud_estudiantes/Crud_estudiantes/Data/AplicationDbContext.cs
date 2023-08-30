using Crud_estudiantes.Models;
using Microsoft.EntityFrameworkCore;

namespace Crud_estudiantes.Data
{
    public class AplicationDbContext : DbContext
    {
        public AplicationDbContext(DbContextOptions<AplicationDbContext> options) : base(options)
        { 
        
        }
        public DbSet<Curso>Cursos { get; set; }
        public DbSet<Inscripcion> Inscripciones { get; set; }
        public DbSet<Estudiante> Estudiantes { get; set; }
    }
}
