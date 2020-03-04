using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using BdUsuarios.Models;

namespace BdUsuarios
{
    public class CreateModel : PageModel
    {
        private readonly BdUsuarios.Models.UsersContext _context;

        public CreateModel(BdUsuarios.Models.UsersContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public Users Users { get; set; }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Users.Add(Users);
            await _context.SaveChangesAsync().ConfigureAwait(false);

            return RedirectToPage("./Index");
        }
    }
}
