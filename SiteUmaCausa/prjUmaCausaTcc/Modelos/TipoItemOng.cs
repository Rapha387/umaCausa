using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class TipoItemOng : Banco
{
    #region Propriedades
    public Usuario Ong { get; set; }
    public TipoItem TipoItem { get; set; }
    #endregion

    #region Metodos
    public void CadastrarTipoItemOng(int codigoTipoItem, int codigoOng)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdItem", codigoTipoItem.ToString()),
            new Parametro ("pIdOng", codigoOng.ToString()),
        };
        try
        {
            Conectar();
            Executar("CadastrarItemAceitoOng", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally { Desconectar(); }
    }

    public void DeletarTipoItemOng(int codigoTipoItem, int codigoOng)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdUsuario", codigoOng.ToString()),
            new Parametro ("pCodigoTipoItem", codigoTipoItem.ToString()),
        };
        try
        {
            Conectar();
            Executar("DeletarTipoItemONg", parametros);
            Desconectar();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    #endregion
}
