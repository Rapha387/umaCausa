using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public class InteresseItem
{
    #region Propriedades
    public DivulgacaoItem DivulgacaoItem { get; set; }
    public Usuario ONG { get; set; }
    public DateTime ItemRecebido { get; set; }
    public DateTime Interesse { get; set; }
    public DateTime BuscaItem { get; set; }
    public TipoEntrega TipoEntrega { get; set; }
    public bool InteresseConfirmada { get; set; }
    #endregion
}
