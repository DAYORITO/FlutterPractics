using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Crud_estudiantes.Migrations
{
    /// <inheritdoc />
    public partial class Creacion_de_tablas : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Cursos",
                columns: table => new
                {
                    IDCurso = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Title = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Creadits = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Cursos", x => x.IDCurso);
                });

            migrationBuilder.CreateTable(
                name: "Estudiantes",
                columns: table => new
                {
                    IDEstudiante = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LastName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    FirstName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    EnrollmentDate = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Estudiantes", x => x.IDEstudiante);
                });

            migrationBuilder.CreateTable(
                name: "Inscripciones",
                columns: table => new
                {
                    IDInscripcion = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    IDCurso = table.Column<int>(type: "int", nullable: false),
                    IDEstudiante = table.Column<int>(type: "int", nullable: false),
                    Grade = table.Column<int>(type: "int", nullable: true),
                    CursoIDCurso = table.Column<int>(type: "int", nullable: true),
                    EstudianteIDEstudiante = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Inscripciones", x => x.IDInscripcion);
                    table.ForeignKey(
                        name: "FK_Inscripciones_Cursos_CursoIDCurso",
                        column: x => x.CursoIDCurso,
                        principalTable: "Cursos",
                        principalColumn: "IDCurso");
                    table.ForeignKey(
                        name: "FK_Inscripciones_Estudiantes_EstudianteIDEstudiante",
                        column: x => x.EstudianteIDEstudiante,
                        principalTable: "Estudiantes",
                        principalColumn: "IDEstudiante");
                });

            migrationBuilder.CreateIndex(
                name: "IX_Inscripciones_CursoIDCurso",
                table: "Inscripciones",
                column: "CursoIDCurso");

            migrationBuilder.CreateIndex(
                name: "IX_Inscripciones_EstudianteIDEstudiante",
                table: "Inscripciones",
                column: "EstudianteIDEstudiante");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Inscripciones");

            migrationBuilder.DropTable(
                name: "Cursos");

            migrationBuilder.DropTable(
                name: "Estudiantes");
        }
    }
}
