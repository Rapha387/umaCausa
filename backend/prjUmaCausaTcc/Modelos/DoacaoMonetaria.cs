using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DoacaoMonetaria : Banco
{
    #region Propriedades
    public Usuario Doador { get; set; }
    public double ValorDoacao { get; set; }
    public DateTime DataDoacao { get; set; }
    #endregion

    #region Metodos
    public void CadastrarDoacaoMonetaria(int doador, int ong, double valor, string refcomprovante)
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