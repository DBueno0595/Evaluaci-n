using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace PruebaCDT.Controllers
{
    public class AccessController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public ActionResult Enter( string user, string password)
        {
            try
            {
                return Content("1");
            }
            catch(Exception ex)
            {
                return Content($"Ocurrio un error :( {ex.Message}.");
            }

            return View();
        }
    }
}