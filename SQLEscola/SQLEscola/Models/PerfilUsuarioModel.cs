using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class PerfilUsuarioModel
    {
        public int Id_Usuario{ get; set; }

        public int Id_Perfil { get; set; }
    }
}