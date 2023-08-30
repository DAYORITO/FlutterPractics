using System.ComponentModel.DataAnnotations;

namespace Crud_estudiantes.Models
{
    public class Curso
    {
        [Key]
        public int IDCurso { get; set; }
        public string Title { get; set; }
        public int Creadits { get; set; }
        public ICollection<Inscripcion>? Inscripciones { get; set; }
    }
}
