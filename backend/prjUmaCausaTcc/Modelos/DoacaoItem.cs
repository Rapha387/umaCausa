using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class DoacaoItem : Banco
{
    #region Propriedades
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

    #endregion

    #region Metodos

    public void CadastrarDoacaoItem(int doador, int ong, string nome, string quantidade, TipoItem tipo, TipoEntrega entrega, string dataDesejada, string horaDesejada)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro("pIdUsuarioDoador",doador.ToString()),
            new Parametro("pIdUsuarioOng",ong.ToString()),
            new Parametro("pNmItem", nome),
            new Parametro("pQtItem", quantidade.ToString()),
            new Parametro("pIdTipoItem", tipo.Codigo.ToString()),
            new Parametro("pIdTipoEntrega", entrega.Codigo.ToString()),
            new Parametro("pHoraDoacao", horaDesejada),
            new Parametro("pDataDoacao", dataDesejada.ToString()),
        };
        try
        {
            Conectar();
            Executar("CadastrarDoacaoItem", parametros);
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
    public void ConfirmarDoacaoCampanha( int usuarioDoador, int usuarioOng, DateTime dataDoacao,bool situacaoDoacao)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro("pIdUsuarioDoador",usuarioDoador.ToString()),
            new Parametro("pIdUsuarioOng",usuarioOng.ToString()),
            new Parametro("pDataDoacaoItem", dataDoacao.ToString()),
            new Parametro("SituacaoDoacao", situacaoDoacao.ToString()),

        };
        try
        {
            Conectar();
            Executar("ConfirmarRecebimentoDoacaoItem", parametros);
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
