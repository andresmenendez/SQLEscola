using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class QuestaoRestricaoModel
    {
        [Required]
        public int Id_Questao { get; set; }

        [Required]
        public int Id_Restricao { get; set; }

    }
}