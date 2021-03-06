﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SQLEscola.Models
{
    [Serializable]
    public class QuestaoModel
    {
        [Required]
        public int Id_Questao { get; set; }

        [Required]
        [Display(Name = "Descrição")]
        public string Descricao { get; set; }

        [Display(Name = "Script de Criação")]
        public string ScriptCriacao { get; set; }

        [Display(Name = "Script de Povoamento")]
        public string ScriptPovoamento { get; set; }

        [Required]
        [Display(Name = "Script de Resolução")]
        public string ScriptResultado { get; set; }

        [Display(Name = "Ordem da Questão")]
        public int Ordem { get; set; }

        [Display(Name = "Data da Criação")]
        [DataType(DataType.Date)]
        public DateTime? DataCriacao { get; set; }

        [Display(Name = "Data da Alteração")]
        [DataType(DataType.Date)]
        public DateTime? DataAlteracao { get; set; }

        public string Status { get; set; }

        [Required]
        [Display(Name = "Nome do Prodecimento do Script de Resolução")]
        public string NomeProcedimento { get; set; }

        [Required]
        [Display(Name = "Casos de Teste")]
        public string CasosTeste { get; set; }

        [Required]
        public int Id_Tecnologia { get; set; }

        [Required]
        public int Id_Atividade { get; set; }

        public bool QuestaoRespondida { get; set; }

        public byte[] ArrayBytes { get; set; }
    }
}