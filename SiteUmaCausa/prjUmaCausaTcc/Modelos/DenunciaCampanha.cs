using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public class DenunciaCampanha : Banco
{
    #region Propriedades
    public Campanha CampanhaDenunciada { get; set; }
    public DateTime DataDenuncia { get; set; }
    public string Descricao { get; set; }
    public MotivoDenunciaCampanha Motivo { get; set; }
    public Usuario Denunciante { get; set; }
    #endregion

    public void RealizarDenuncia(int codigoDenunciante, int codigoCampanhaDenunciada, int codigoMotivoDenuncia, string dsDenuncia)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro("pIdUsuario", codigoDenunciante.ToString()),
            new Parametro("pIdCampanha", codigoCampanhaDenunciada.ToString()),
            new Parametro("pIdMotivoDenuncia", codigoMotivoDenuncia.ToString()),
            new Parametro("pDsDenuncia", dsDenuncia)
        };

        try
        {
            Conectar();
            Executar("DenunciarCampanha", parametros);
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
}