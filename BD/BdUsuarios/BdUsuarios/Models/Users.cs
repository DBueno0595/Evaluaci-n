using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace BdUsuarios.Models
{
    public partial class Users
    {
        public int IdUser { get; set; }
        public string Usuario { get; set; }
        public string Email { get; set; }
        public string Contraseña { get; set; }
    }

    public partial class UsersEdit
    {
        public int IdUser { get; set; }
        public string Usuario { get; set; }
        public string Email { get; set; }
        public string Contraseña { get; set; }
    }
}
