using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class DoacaoItem
{
    #region Propriedades
    public Usuario Doador { get; set; }
    public Usuario ONG { get; set; }
    public string NomeItem { get; set; }
    public DateTime DataDoacao { get; set; }
    public DateTime DataRecebimento { get; set; }
    public int Quantidade { get; set; }
    public bool DoacaoConfirmada { get; set; }
    public TipoItem TipoItem { get; set; }
    public TipoEntrega TipoEntrega { get; set; }
    #endregion

    #region Metodos

    #endregion
}
