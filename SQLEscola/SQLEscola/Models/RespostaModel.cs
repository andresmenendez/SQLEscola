using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class RespostaModel
    {
        [Required]
        public int Id_Resposta { get; set; }

        [Required]
        [Display(Name = "Script Resposta")]
        public string ScriptResposta { get; set; }

        [Display(Name = "Data da Resposta")]
        [DataType(DataType.Date)]
        public DateTime? DataResposta { get; set; }
        
        [Required]
        public int Id_Usuario { get; set; }

        [Required]
        public int Id_Questao { get; set; }
    }
}