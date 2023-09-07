using System.ComponentModel.DataAnnotations;

namespace Crud_estudiantes.Models
{
    public class Estudiante
    {
        [Key]
        public int IDEstudiante { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public DateTime EnrollmentDate { get; set; }

        public ICollection<Inscripcion>? Inscripciones { get; set; }
    }
}
