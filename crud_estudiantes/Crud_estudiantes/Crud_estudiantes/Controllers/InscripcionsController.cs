using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Crud_estudiantes.Data;
using Crud_estudiantes.Models;

namespace Crud_estudiantes.Controllers
{
    public class InscripcionsController : Controller
    {
        private readonly AplicationDbContext _context;

        public InscripcionsController(AplicationDbContext context)
        {
            _context = context;
        }

        // GET: Inscripcions
        public async Task<IActionResult> Index()
        {
              return _context.Inscripciones != null ? 
                          View(await _context.Inscripciones.ToListAsync()) :
                          Problem("Entity set 'AplicationDbContext.Inscripciones'  is null.");
        }

        // GET: Inscripcions/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Inscripciones == null)
            {
                return NotFound();
            }

            var inscripcion = await _context.Inscripciones
                .FirstOrDefaultAsync(m => m.IDInscripcion == id);
            if (inscripcion == null)
            {
                return NotFound();
            }

            return View(inscripcion);
        }

        // GET: Inscripcions/Create
        public IActionResult Create()
        {
            ViewData["IDCurso"] = new SelectList(_context.Cursos,"IDCurso", "Title");
            ViewData["IDEstudiante"] = new SelectList(_context.Estudiantes, "IDEstudiante", "LastName");
            return View();
        }

        // POST: Inscripcions/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IDInscripcion,IDCurso,IDEstudiante,Grade")] Inscripcion inscripcion)
        {
            if (ModelState.IsValid)
            {
                _context.Add(inscripcion);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));

            }
            ViewData["IDCurso"] = new SelectList(_context.Cursos, "IDCurso", "Title", inscripcion.IDCurso);
            ViewData["IDEstudiante"] = new SelectList(_context.Estudiantes, "IDEstudiante", "LastName", inscripcion.IDEstudiante);

            return View(inscripcion);
        }

        // GET: Inscripcions/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Inscripciones == null)
            {
                return NotFound();
            }

            var inscripcion = await _context.Inscripciones.FindAsync(id);
            if (inscripcion == null)
            {
                return NotFound();
            }
            ViewData["IDCurso"] = new SelectList(_context.Cursos, "IDCurso", "Title", inscripcion.IDCurso);
            ViewData["IDEstudiante"] = new SelectList(_context.Estudiantes, "IDEstudiante", "LastName", inscripcion.IDEstudiante);
            return View(inscripcion);
        }

        // POST: Inscripcions/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("IDInscripcion,IDCurso,IDEstudiante,Grade")] Inscripcion inscripcion)
        {
            if (id != inscripcion.IDInscripcion)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(inscripcion);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!InscripcionExists(inscripcion.IDInscripcion))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["IDCurso"] = new SelectList(_context.Cursos, "IDCurso", "Title", inscripcion.IDCurso);
            ViewData["IDEstudiante"] = new SelectList(_context.Estudiantes, "IDEstudiante", "LastName", inscripcion.IDEstudiante);
            return View(inscripcion);
        }


        // GET: Inscripcions/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Inscripciones == null)
            {
                return NotFound();
            }

            var inscripcion = await _context.Inscripciones
                .FirstOrDefaultAsync(m => m.IDInscripcion == id);
            if (inscripcion == null)
            {
                return NotFound();
            }

            return View(inscripcion);
        }

        // POST: Inscripcions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Inscripciones == null)
            {
                return Problem("Entity set 'AplicationDbContext.Inscripciones'  is null.");
            }
            var inscripcion = await _context.Inscripciones.FindAsync(id);
            if (inscripcion != null)
            {
                _context.Inscripciones.Remove(inscripcion);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool InscripcionExists(int id)
        {
          return (_context.Inscripciones?.Any(e => e.IDInscripcion == id)).GetValueOrDefault();
        }
    }
}
