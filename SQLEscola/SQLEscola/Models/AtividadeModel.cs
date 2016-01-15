using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class AtividadeModel
    {
        [Required]
        public int Id_Atividade { get; set; }

        [Required]
        [StringLength(120)]
        [Display(Name = "Atividade")]
        public string Nome_Atividade { get; set; }

        [Required]
        public int Id_Turma { get; set; }

        public int QtdeQuestoes { get; set; }
    }
}