using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    public class TurmaModel
    {
        [Required]
        public int Id_Turma{ get; set; }

        [Required]
        [StringLength(100)]
        [Display(Name = "Nome da Turma")]
        public string Turma { get; set; }

        public int Id_Usuario { get; set; }

        public string Usuario { get; set; }
    }
}