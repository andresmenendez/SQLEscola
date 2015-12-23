using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class TecnologiaModel
    {
        [Required]
        public int Id_Tecnologia { get; set; }

        [Required]
        [StringLength(100)]
        [Display(Name = "Descrição")]
        public string Descricao { get; set; }

        [Required]
        [StringLength(10)]
        [Display(Name = "Versão")]
        public string Versao { get; set; }
    }
}