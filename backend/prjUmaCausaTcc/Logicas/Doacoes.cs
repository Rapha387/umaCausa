using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySqlX.XDevAPI;
using prjUmaCausaTcc.Logicas;


public class Doacoes : Banco
{
    public Usuario Doador { get; set; }
    public Usuario ONG { get; set; }
    public string Nome { get; set; }
    public string DataDesejada { get; set; }
    public string HorarioEsperado { get; set; }
    public DateTime DataDoacao { get; set; }
    public string Quantidade { get; set; }
    public bool DoacaoConfirmada { get; set; }
    public string NomeTipoItem { get; set; }
    public DateTime RespostaOng { get; set; }
    public string TipoDoacao { get; set; }
    public string Comprovante { get; set; }
    public int Codigo { get; set; }

    public List<Doacoes> ListarDoacoes(int IdUsuario)
    {
        List<Doacoes> listarDoacoes = new List<Doacoes>();
        Colaboracoes colaboracoes = new Colaboracoes();
            
        foreach (DoacaoCampanha item in colaboracoes.ListaDoacoesCampanhas(IdUsuario))
        {
            listarDoacoes.Add(new Doacoes
            {
                Nome = item.Campanha.Nome,
                ONG = item.Campanha.ONG,
                DataDoacao = item.DataDoacao,
                Quantidade = item.QuantidadeDoado,
                NomeTipoItem = item.Campanha.TipoItemArrecadado.Nome,
                DoacaoConfirmada = item.DoacaoConfirmada,
                RespostaOng = item.RespostaOng,
                Comprovante = item.Comprovante
            });
        };

        foreach (DoacaoItem item in colaboracoes.ListaDoacoesItems(IdUsuario))
        {
            listarDoacoes.Add(new Doacoes
            {
                ONG = item.ONG,
                DataDoacao= item.DataDoacao,
                Quantidade = item.Quantidade,
                NomeTipoItem = char.ToUpper(item.NomeItem[0]) + item.NomeItem.Substring(1),
                DoacaoConfirmada = item.DoacaoConfirmada,
                RespostaOng = item.respostaOng,
            });
        };

        foreach (DoacaoMonetaria item in colaboracoes.ListaDoacoesMonetarias(IdUsuario))
        {
            listarDoacoes.Add(new Doacoes
            {
                ONG = item.ONG,
                DataDoacao = item.DataDoacao,
                Quantidade = "R$" + item.ValorDoacao.ToString(),
                NomeTipoItem = "Monetário",
                DoacaoConfirmada = item.DoacaoConfirmada,
                RespostaOng = item.respostaOng,
                Comprovante = item.Comprovante
            });
        };

        var listarDoacoesOrdernada = listarDoacoes.OrderByDescending(item => item.DataDoacao).ToList();
        return listarDoacoesOrdernada;
    }
    public List<Doacoes> ListarDoacoesNaoConfirmadas(int IdUsuarioONG)
    {
        List<Doacoes> listarDoacoes = new List<Doacoes>();
        Colaboracoes colaboracoes = new Colaboracoes();

        foreach (DoacaoCampanha item in colaboracoes.ListarDoacoesCampanhasMonetariasConfirmadasOuNao(IdUsuarioONG, false))
        {
            listarDoacoes.Add(new Doacoes
            {
                Doador = item.Doador,
                Nome = item.Campanha.Nome,
                ONG = item.Campanha.ONG,
                DataDoacao = item.DataDoacao,
                Quantidade = item.QuantidadeDoado,
                NomeTipoItem = item.Campanha.TipoItemArrecadado.Nome,
                Comprovante = item.Comprovante,
                DoacaoConfirmada = false,
                TipoDoacao = "dcm",
                Codigo = item.Codigo,
            }) ;
        };
        foreach (DoacaoCampanha item in colaboracoes.ListarDoacoesCampanhasItensConfirmadasOuNao(IdUsuarioONG, false))
        {
            listarDoacoes.Add(new Doacoes
            {
                Doador = item.Doador,
                Nome = item.Campanha.Nome,
                ONG = item.Campanha.ONG,
                DataDoacao = item.DataDoacao,
                Quantidade = item.QuantidadeDoado,
                NomeTipoItem = item.Campanha.TipoItemArrecadado.Nome,
                DoacaoConfirmada = false,
                TipoDoacao = "dci",
                Codigo=item.Codigo,
            });
        };
        foreach (DoacaoMonetaria item in colaboracoes.ListarDoacoesMonetariasConfirmadasOuNao(IdUsuarioONG, false))
        {
            listarDoacoes.Add(new Doacoes
            {
                Doador = item.Doador,
                DataDoacao = item.DataDoacao,
                Quantidade = "R$" + item.ValorDoacao.ToString(),
                NomeTipoItem = "Monetário",
                DoacaoConfirmada = false,
                Comprovante = item.Comprovante,
                TipoDoacao = "dm",
                Codigo = item.CodigoDoacao
            });
        };
        foreach (DoacaoItem item in colaboracoes.ListarDoacoesItensConfirmadasOuNao(IdUsuarioONG, false))
        {
            listarDoacoes.Add(new Doacoes
            {
                Doador = item.Doador,
                DataDoacao = item.DataDoacao,
                DataDesejada = item.DataDesejada,
                HorarioEsperado = item.HorarioDesejado,
                Quantidade = item.Quantidade,
                NomeTipoItem = char.ToUpper(item.NomeItem[0]) + item.NomeItem.Substring(1),
                DoacaoConfirmada = false,
                TipoDoacao = "di",
                Codigo = item.Codigo
            });
        };

        var listarDoacoesOrdernada = listarDoacoes.OrderByDescending(item => item.DataDoacao).ToList();
        return listarDoacoesOrdernada;
    }

    public List<Doacoes> ListarDoacoesConfirmadas(int IdUsuarioONG)
    {
        List<Doacoes> listarDoacoes = new List<Doacoes>();
        Colaboracoes colaboracoes = new Colaboracoes();

        foreach (DoacaoCampanha item in colaboracoes.ListarDoacoesCampanhasMonetariasConfirmadasOuNao(IdUsuarioONG, true))
        {
            listarDoacoes.Add(new Doacoes
            {
                NomeDoador = item.Doador.Nome,
                Nome = item.Campanha.Nome,
                NomeONG = item.Campanha.ONG.Nome,
                DataDoacao = item.DataDoacao,
                Quantidade = item.QuantidadeDoado,
                NomeTipoItem = item.Campanha.TipoItemArrecadado.Nome,
                DoacaoConfirmada = item.DoacaoConfirmada,
                TipoDoacao = "dc",
                Codigo = item.Codigo,
            });
        };
        foreach (DoacaoCampanha item in colaboracoes.ListarDoacoesCampanhasItensConfirmadasOuNao(IdUsuarioONG, true))
        {
            listarDoacoes.Add(new Doacoes
            {
                NomeDoador = item.Doador.Nome,
                Nome = item.Campanha.Nome,
                NomeONG = item.Campanha.ONG.Nome,
                DataDoacao = item.DataDoacao,
                Quantidade = item.QuantidadeDoado,
                NomeTipoItem = item.Campanha.TipoItemArrecadado.Nome,
                DoacaoConfirmada = item.DoacaoConfirmada,
                TipoDoacao = "dc",
                Codigo = item.Codigo,
            });
        };
        foreach (DoacaoMonetaria item in colaboracoes.ListarDoacoesMonetariasConfirmadasOuNao(IdUsuarioONG, true))
        {
            listarDoacoes.Add(new Doacoes
            {
                NomeDoador = item.Doador.Nome,
                DataDoacao = item.DataDoacao,
                Quantidade = "R$" + item.ValorDoacao.ToString(),
                NomeTipoItem = "Monetário",
                DoacaoConfirmada = item.DoacaoConfirmada,
                TipoDoacao = "dm",
                Codigo = item.CodigoDoacao
            });
        };
        foreach (DoacaoItem item in colaboracoes.ListarDoacoesItensConfirmadasOuNao(IdUsuarioONG, true))
        {
            listarDoacoes.Add(new Doacoes
            {
                NomeDoador = item.Doador.Nome,
                DataDoacao = item.DataDoacao,
                DataDesejada = item.DataDesejada,
                HorarioEsperado = item.HorarioDesejado,
                Quantidade = item.Quantidade,
                NomeTipoItem = char.ToUpper(item.NomeItem[0]) + item.NomeItem.Substring(1),
                DoacaoConfirmada = item.DoacaoConfirmada,
                TipoDoacao = "di",
                Codigo = item.Codigo
            });
        };

        var listarDoacoesOrdernada = listarDoacoes.OrderByDescending(item => item.DataDoacao).ToList();
        return listarDoacoesOrdernada;
    }

    public List<Doacoes> ListarDoacoesPesquisa(int IdUsuario, string pesquisa )
    {
        List<Doacoes> listarDoacoes = new List<Doacoes>();
        Colaboracoes colaboracoes = new Colaboracoes();

        foreach (DoacaoCampanha item in colaboracoes.ListaDoacoesCampanhasPesquisa(IdUsuario, pesquisa))
        {
            listarDoacoes.Add(new Doacoes
            {
                Nome = item.Campanha.Nome,
                ONG = item.Campanha.ONG,
                DataDoacao = item.DataDoacao,
                Quantidade = item.QuantidadeDoado,
                NomeTipoItem = item.Campanha.TipoItemArrecadado.Nome,
                DoacaoConfirmada = item.DoacaoConfirmada,
                RespostaOng = item.RespostaOng,
                Comprovante = item.Comprovante
            });
        }; 
        foreach (DoacaoItem item in colaboracoes.ListaDoacoesItemsPesquisa(IdUsuario, pesquisa))
        {
            listarDoacoes.Add(new Doacoes
            {
                ONG = item.ONG,
                DataDoacao = item.DataDoacao,
                Quantidade = item.Quantidade,
                NomeTipoItem = char.ToUpper(item.NomeItem[0]) + item.NomeItem.Substring(1),
                DoacaoConfirmada = item.DoacaoConfirmada,
                RespostaOng = item.respostaOng,
            });
        };
        foreach (DoacaoMonetaria item in colaboracoes.ListaDoacoesMonetariasPesquisa(IdUsuario, pesquisa))
        {
            listarDoacoes.Add(new Doacoes
            {
                ONG = item.ONG,
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
