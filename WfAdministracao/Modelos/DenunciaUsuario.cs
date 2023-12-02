using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public class DenunciaUsuario : Banco
{
    #region Propriedades
    public Usuario Denunciado { get; set; }
    public Usuario Denunciante { get; set; }
    public MotivoDenunciaUsuario Motivo { get; set; }
    public DateTime DataDenuncia { get; set; }
    public string Descricao { get; set; }
    public bool Aprovada { get; set; }
    #endregion

    #region Metodos

    public void RealizarDenuncia(int codigoDenunciante, int codigoDenunciado, int codigoMotivoDenuncia, string dsDenuncia)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro("pUsuarioDenunciante", codigoDenunciante.ToString()),
            new Parametro("pUsuarioDenunciado", codigoDenunciado.ToString()),
            new Parametro("pIdMotivoDenuncia", codigoMotivoDenuncia.ToString()),
            new Parametro("pDsDenuncia", dsDenuncia)
        };

        try
        {
            Conectar();
            Executar("DenunciarUsuario", parametros);
        }
        catch(Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            Desconectar();
        }
    }

    public void AprovarDenuncia(DateTime Data,int Denunciante, int Denunciado, int gravidade)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pDenunciado", Denunciado.ToString()),
            new Parametro ("pGravidade", gravidade.ToString()),
            new Parametro ("pDenunciante", Denunciante.ToString()),
            new Parametro ("pData", Data.ToString("yyyy-MM-dd HH:mm:ss")),
        };

        try
        {
            Conectar();
            Executar("AprovarDenuncia", parametros);
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
    public void RemoverDenuncia(DateTime Data, int Denunciante, int Denunciado, int gravidade)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pDenunciado", Denunciado.ToString()),
            new Parametro ("pGravidade", gravidade.ToString()),
            new Parametro ("pDenunciante", Denunciante.ToString()),
            new Parametro ("pData", Data.ToString("yyyy-MM-dd HH:mm:ss")),
        };

        try
        {
            Conectar();
            Executar("RemoverDenuncia", parametros);
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
