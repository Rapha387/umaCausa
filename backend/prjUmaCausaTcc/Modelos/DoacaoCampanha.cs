using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DoacaoCampanha
{
    #region Propriedades
    public Campanha Campanha { get; set; }
    public Usuario Doador { get; set; }
    public DateTime DataDoacao { get; set; }
    public int QuantidadeDoado { get; set; }
    public bool DoacaoConfirmada { get; set; }
    #endregion
}
