using System.ComponentModel.DataAnnotations;

namespace Crud_estudiantes.Models
{
    public enum Grade
    { 
        A,B,C,D,E,F
    }
    public class Inscripcion
    {
        [Key]
        public int IDInscripcion { get; set; }
        public int IDCurso { get; set; }
        public int IDEstudiante { get; set; }
        public Grade? Grade { get; set; }
        public Curso? Curso { get; set; }
        public Estudiante? Estudiantes { get; set; }
    }
}
