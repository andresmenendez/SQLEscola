using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class ResultadoModel
    {
        [Required]
        public int Id_Resultado { get; set; }

        [Required]
        [Display(Name = "Resultado")]
        public string Resultados { get; set; }

        [Display(Name = "Comentários do Professor")]
        public string Comentarios_Prof { get; set; }

        [Required]
        public int Id_Resposta { get; set; }

        public string ScriptResposta { get; set; }
    }
}