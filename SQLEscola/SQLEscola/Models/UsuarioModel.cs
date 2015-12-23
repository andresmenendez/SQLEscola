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

        [Required]
        [Display(Name = "Nome do Usuário")]
        [StringLength(60)]
        public string Nome { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "E-mail")]
        public string Email { get; set; }

        [Required]
        [StringLength(45)]
        [Display(Name = "Senha")]
        public string Senha { get; set; }

        [Display(Name = "Foto")]
        public byte[] Foto { get; set; }

        [Required]
        public int Id_Perfil { get; set; }
    }
}