using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prjUmaCausaTcc.Logicas;

namespace prjUmaCausaTcc.Modelos
{
    public class Doacoes : Banco
    {
        public Usuario Doador { get; set; }
        public Usuario ONG { get; set; }
        public string NomeItem { get; set; }
        public DateTime DataDoacao { get; set; }
        public DateTime DataRecebimento { get; set; }
        public string Quantidade { get; set; }
        public bool DoacaoConfirmada { get; set; }
        public TipoItem TipoItem { get; set; }
        public TipoEntrega TipoEntrega { get; set; }
        public DateTime respostaOng { get; set; }

        public string DataDesejada { get; set; }
        public string HorarioDesejado { get; set; }
        public void ListarDoacoes(int IdUsuario)
        {
        


            Colaboracoes colaboracoes = new Colaboracoes();
            colaboracoes.ListaDoacoesCampanhas(IdUsuario);
            colaboracoes.ListaDoacoesItems(IdUsuario);
        }
    }
}