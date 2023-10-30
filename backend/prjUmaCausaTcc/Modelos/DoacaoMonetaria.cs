using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DoacaoMonetaria : Banco
{
    #region Propriedades
    public Usuario ONG { get; set; }
    public Usuario Doador { get; set; }
    public double ValorDoacao { get; set; }
    public DateTime DataDoacao { get; set; }
    public int CodigoComprovante { get; set; }  
    public string Comprovante { get; set; }
    public int CodigoDoacao { get; set; }   
    public DateTime respostaOng { get; set; }
    public bool DoacaoConfirmada { get; set; }
    #endregion

    #region Metodos
    public void CadastrarDoacaoMonetaria(int doador, int ong, double valor)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro("pIdUsuarioDoador",doador.ToString()),
            new Parametro("pIdUsuarioOng",ong.ToString()),
            new Parametro("pVlMonetario", valor.ToString().Replace(",",".")),
        };
        try
        {
            Conectar();
            Executar("CadastrarDoacaoMonetaria", parametros);
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

    public int GerarComprovante()
    {
        try
        {
            var dados = Consultar("GerarCodigoComprovante", null);
            if (dados.Read())
            {
                CodigoComprovante = dados.GetInt32("comprovante");
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            Desconectar();
        }

        return CodigoComprovante;
    }
    public void ConfirmarDoacaoMonetaria(int usuarioDoador, int usuarioOng, DateTime dataDoacao, bool confirmacao)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro("pIdUsuarioDoador",usuarioDoador.ToString()),
            new Parametro("pIdUsuarioOng", usuarioOng.ToString()),
            new Parametro("pDataDoacao", dataDoacao.ToString()),
            new Parametro("SituacaoDoacao", confirmacao.ToString()),

        };
        try
        {
            Conectar();
            Executar("ConfirmarRecebimentoDoacaoMonetaria", parametros);
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

    public void BuscarComprovante(int usuarioDoador, int usuarioOng, DateTime dataDoacao)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro("pUsuario",usuarioDoador.ToString()),
            new Parametro("pOng", usuarioOng.ToString()),
            new Parametro("pData", dataDoacao.ToString()),

        };
        try
        {
            var dados = Consultar("BuscarComprovante", parametros);
            if (dados.Read())
            {
                Comprovante = dados.GetString("nm_comprovante");
            }
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