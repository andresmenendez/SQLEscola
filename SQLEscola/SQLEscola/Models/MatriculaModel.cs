using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class MatriculaModel
    {
        [Required]
        public int Id_Matricula { get; set; }

        [Required]
        public int Id_Usuario { get; set; }

        [Required]
        public int Id_Turma { get; set; }
    }
}