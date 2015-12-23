using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class RestricaoModel
    {
        [Required]
        public int Id_Restricoes { get; set; }

        [Required]
        [StringLength(100)]
        [Display(Name = "Descrição")]
        public string Descricao { get; set; }

        [Required]
        [Display(Name = "Valores")]
        public double Valores { get; set; }
    }
}