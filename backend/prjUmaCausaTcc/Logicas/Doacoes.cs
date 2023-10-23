using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prjUmaCausaTcc.Logicas;


public class Doacoes : Banco
{
    public string NomeONG { get; set; }
    public string Nome { get; set; }
    public DateTime DataDoacao { get; set; }
    public string Quantidade { get; set; }
    public bool DoacaoConfirmada { get; set; }
    public string NomeTipoItem { get; set; }
    public DateTime RespostaOng { get; set; }
    public List<Doacoes> ListarDoacoes(int IdUsuario)
    {
        List<Doacoes> listarDoacoes = new List<Doacoes>();
        Colaboracoes colaboracoes = new Colaboracoes();
            
        foreach (DoacaoCampanha item in colaboracoes.ListaDoacoesCampanhas(IdUsuario))
        {
            listarDoacoes.Add(new Doacoes { 
                Nome = item.Campanha.Nome,
                NomeONG = item.Campanha.ONG.Nome, 
                DataDoacao = item.DataDoacao, 
                Quantidade = item.QuantidadeDoado,
                NomeTipoItem = item.Campanha.TipoItemArrecadado.Nome,
                DoacaoConfirmada = item.DoacaoConfirmada,
                RespostaOng = item.RespostaOng,
        });
        };
        foreach (DoacaoItem item in colaboracoes.ListaDoacoesItems(IdUsuario))
        {
            listarDoacoes.Add(new Doacoes
            {
                NomeONG = item.ONG.Nome,
                DataDoacao = item.DataDoacao,
                Quantidade = item.Quantidade,
                NomeTipoItem = char.ToUpper(item.NomeItem[0]) + item.NomeItem.Substring(1),
                DoacaoConfirmada = item.DoacaoConfirmada,
                RespostaOng = item.respostaOng,
            }) ;
        };
        foreach (DoacaoMonetaria item in colaboracoes.ListaDoacoesMonetarias(IdUsuario))
        {
            listarDoacoes.Add(new Doacoes
            {
                NomeONG = item.ONG.Nome,
                DataDoacao = item.DataDoacao,
                Quantidade = "R$" + item.ValorDoacao.ToString(),
                NomeTipoItem = "Monetário",
                DoacaoConfirmada = item.DoacaoConfirmada,
                RespostaOng = item.respostaOng,
            });
        };

        var listarDoacoesOrdernada = listarDoacoes.OrderByDescending(item => item.DataDoacao).ToList();
        return listarDoacoesOrdernada;
    }
}
