using prjUmaCausaTcc.pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DoacaoCampanha : Banco
{
    #region Propriedades
    public Campanha Campanha { get; set; }
    public Usuario Doador { get; set; }
    public DateTime DataDoacao { get; set; }
    public string QuantidadeDoado { get; set; }
    public bool DoacaoConfirmada { get; set; }
    public DateTime RespostaOng { get; set; }
    public TipoItem TipoItem { get; set; }

    public DoacaoCampanha(Campanha campanha, Usuario doador, DateTime dataDoacao, string quantidadeDoado, bool doacaoConfirmada, DateTime respostaOng, TipoItem tipoItem)
    {
        Campanha = campanha;
        Doador = doador;
        DataDoacao = dataDoacao;
        QuantidadeDoado = quantidadeDoado;
        DoacaoConfirmada = doacaoConfirmada;
        RespostaOng = respostaOng;
        TipoItem = tipoItem;
    }

    public DoacaoCampanha()
    {
    }

    public void ConfirmarDoacaoMonetaria(int campanha, int usuario, DateTime dataDoacao, bool confirmacao)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro("pIdCampanha",campanha.ToString()),
            new Parametro("pIdUsuario", usuario.ToString()),
            new Parametro("pDtDoacao", dataDoacao.ToString()),
            new Parametro("SituacaoDoacao", confirmacao.ToString()),

        };
        try
        {
            Conectar();
            Executar("ConfirmarRespostaDoacaoCampanha", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            Desconectar();
        }
    }

    public void CadastrarDoacaoCampanhaMonetaria(int doador, int campanha, double valor)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro("pIdCampanha",campanha.ToString()),
            new Parametro("pIdUsuario", doador.ToString()),
            new Parametro("pQtDoado", valor.ToString())
        };
        try
        {
            Conectar();
            Executar("CadastrarDoacaoCampanhaMonetaria", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            Desconectar();
        }
    }

    public void CadastrarDoacaoCampanhaItem(int doador, int campanha, double valor, )
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro("pIdCampanha",campanha.ToString()),
            new Parametro("pIdUsuario", doador.ToString()),
            new Parametro("pQtDoado", valor.ToString())
        };
        try
        {
            Conectar();
            Executar("CadastrarDoacaoCampanhaMonetaria", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            Desconectar();
        }
    }

    #endregion
}
