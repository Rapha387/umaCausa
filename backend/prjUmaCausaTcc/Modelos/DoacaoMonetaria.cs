using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DoacaoMonetaria : Banco
{
    #region Propriedades
    public Usuario Doador { get; set; }
    public Usuario ONG { get; set; }
    public string ImagemComprovante { get; set; }
    public bool DoacaoConfirmada { get; set; }
    public double ValorDoacao { get; set; }
    public DateTime DataDoacao { get; set; }
    #endregion

    #region Metodos
    public bool CadastrarDoacaoMonetaria(int doador, int ong, double valor, string refcomprovante)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro("pIdUsuarioDoador",doador.ToString()),
            new Parametro("pIdUsuarioOng",ong.ToString()),
            new Parametro("pVlMonetario", valor.ToString().Replace(",",".")),
            new Parametro("pNmComprovante", refcomprovante)
        };
        try
        {
            Conectar();
            Executar("CadastrarDoacaoMonetaria", parametros);  
            return true;
        }
        catch (Exception)
        {
            return false;
        }
        finally
        {
            Desconectar();
        }
    }

    public bool CadastrarDoacaoItem(string nome, int doador, int ong, int quantidade, TipoItem tipo, TipoEntrega entrega)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro("pIdUsuarioDoador",doador.ToString()),
            new Parametro("pIdUsuarioOng",ong.ToString()),
            new Parametro("pNmItem", nome),
            new Parametro("pQtItem", quantidade.ToString()),
            new Parametro("pIdTipoItem", tipo.Codigo.ToString()),
            new Parametro("pIdTipoEntrega", entrega.Codigo.ToString())
        };
        try
        {
            Conectar();
            Executar("CadastrarDoacaoItem", parametros);
            return true;
        }
        catch (Exception)
        {
            return false;
        }
        finally
        {
            Desconectar();
        }
    }
    #endregion
}
