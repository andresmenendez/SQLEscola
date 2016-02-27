using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class ArquivoModel
    {
        [Required]
        public int Id_Arquivo { get; set; }

        [Required]
        public int Id_Questao { get; set; }

        [Required]
        public string Nome { get; set; }

        [Required]
        public string Tipo { get; set; }

        public HttpPostedFileBase Arquivo { get; set; }

        public byte[] ArrayBytes { get; set; }
    }
}