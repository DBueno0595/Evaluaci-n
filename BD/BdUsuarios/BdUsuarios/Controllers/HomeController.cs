using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using BdUsuarios.Models;

namespace BdUsuarios.Controllers
{
    public class HomeController : Controller
    {
        UsersContext db = new UsersContext();
        public IActionResult Index()
        {
            var data = db.Users;
            return View(data);
        }
        [BindProperty]
        public Users Users { get; set; }
        public ActionResult Edit(int id)
        {
            Users = db.Users.Where(x => x.IdUser == id).FirstOrDefault();
            return View(Users);
        }
        public IActionResult Guardar()
        {
            
            return View();
        }
        public ActionResult Delete()
        {
            return View();
        }
        public ActionResult Register()
        {
            return View();
        }
        private readonly ILogger<HomeController> _logger;
        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        public IActionResult Privacy()
        {
            return View();
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
