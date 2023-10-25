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

    public void CadastrarTipoItem(TipoItem tipoItem, Usuario ong)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdItem", tipoItem.Codigo.ToString()),
            new Parametro ("pIdOng", ong.Codigo.ToString()),
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
