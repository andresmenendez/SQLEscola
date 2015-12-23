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
        public int Id_Perfil { get; set; }

        [Required]
        [StringLength(15)]
        [Display(Name = "Perfil")]
        public string Perfil { get; set; }
    }
}