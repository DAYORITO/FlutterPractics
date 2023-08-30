﻿// <auto-generated />
using System;
using Crud_estudiantes.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace Crud_estudiantes.Migrations
{
    [DbContext(typeof(AplicationDbContext))]
    [Migration("20230828162729_Creacion_de_tablas")]
    partial class Creacion_de_tablas
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.10")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("Crud_estudiantes.Models.Curso", b =>
                {
                    b.Property<int>("IDCurso")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("IDCurso"));

                    b.Property<int>("Creadits")
                        .HasColumnType("int");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("IDCurso");

                    b.ToTable("Cursos");
                });

            modelBuilder.Entity("Crud_estudiantes.Models.Estudiante", b =>
                {
                    b.Property<int>("IDEstudiante")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("IDEstudiante"));

                    b.Property<DateTime>("EnrollmentDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("IDEstudiante");

                    b.ToTable("Estudiantes");
                });

            modelBuilder.Entity("Crud_estudiantes.Models.Inscripcion", b =>
                {
                    b.Property<int>("IDInscripcion")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("IDInscripcion"));

                    b.Property<int?>("CursoIDCurso")
                        .HasColumnType("int");

                    b.Property<int?>("EstudianteIDEstudiante")
                        .HasColumnType("int");

                    b.Property<int?>("Grade")
                        .HasColumnType("int");

                    b.Property<int>("IDCurso")
                        .HasColumnType("int");

                    b.Property<int>("IDEstudiante")
                        .HasColumnType("int");

                    b.HasKey("IDInscripcion");

                    b.HasIndex("CursoIDCurso");

                    b.HasIndex("EstudianteIDEstudiante");

                    b.ToTable("Inscripciones");
                });

            modelBuilder.Entity("Crud_estudiantes.Models.Inscripcion", b =>
                {
                    b.HasOne("Crud_estudiantes.Models.Curso", "Curso")
                        .WithMany("Inscripciones")
                        .HasForeignKey("CursoIDCurso");

                    b.HasOne("Crud_estudiantes.Models.Estudiante", "Estudiante")
                        .WithMany("Inscripciones")
                        .HasForeignKey("EstudianteIDEstudiante");

                    b.Navigation("Curso");

                    b.Navigation("Estudiante");
                });

            modelBuilder.Entity("Crud_estudiantes.Models.Curso", b =>
                {
                    b.Navigation("Inscripciones");
                });

            modelBuilder.Entity("Crud_estudiantes.Models.Estudiante", b =>
                {
                    b.Navigation("Inscripciones");
                });
#pragma warning restore 612, 618
        }
    }
}
