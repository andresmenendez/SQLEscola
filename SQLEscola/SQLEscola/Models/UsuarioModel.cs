using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class UsuarioModel
    {
        [Required]
        public int Id_Usuario { get; set; }

        [Display(Name = "Nome do Usuário")]
        [StringLength(60)]
        public string Nome { get; set; }

        public string UserName { get; set; }

        [StringLength(50)]
        [Display(Name = "E-mail")]
        public string Email { get; set; }

        [Display(Name = "Foto")]
        public byte[] Foto { get; set; }

    }
}