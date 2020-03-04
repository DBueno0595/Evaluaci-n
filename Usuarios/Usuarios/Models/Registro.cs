using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Usuarios.Models
{
    public class Registro
    {
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string identificacion { get; set; }
        public string telefono { get; set; }
        public DateTime fecha { get; set; }

    }
}
