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

        public int Id_Questao { get; set; }

        public string Usuario { get; set; }

        [Required]
        public string NomeProcedResposta { get; set; }

        //Para tela de CreateAtaho/Reposta
        public int Turmas { get; set; }
        public int Atividades { get; set; }
        public int Questoes { get; set; }
        //Para tela de Respostas
        [Display(Name = "Erros no Script")]
        public string ScriptErros { get; set; }
        //Para exibir Arquivos
        public byte[] ArrayBytes { get; set; }
    }
}