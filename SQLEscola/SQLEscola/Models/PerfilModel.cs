using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class PerfilModel
    {
        [Required]
        public int Id_Ativar_Perfil { get; set; }

        [Required]
        public int Id_Usuario { get; set; }

        [Required]
        [StringLength(1)]
        public string Status { get; set; }

        public string NomeUsuario { get; set; }
        public string NomeCompletoUsuario { get; set; }
        public string Email { get; set; }
    }
}