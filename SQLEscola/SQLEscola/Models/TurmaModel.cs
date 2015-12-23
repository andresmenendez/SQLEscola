using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class TurmaModel
    {
        [Required]
        public int Id_Turma{ get; set; }

        [Required]
        [StringLength(100)]
        [Display(Name = "Turma")]
        public string Turma { get; set; }
    }
}