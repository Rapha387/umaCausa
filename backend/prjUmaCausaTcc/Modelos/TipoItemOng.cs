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

    public void CadastrarTipoItem(int codigoTipoItem, int codigoOng)
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
            Desconectar();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
}
