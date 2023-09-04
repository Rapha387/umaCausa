using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DoacaoMonetaria
{
    #region Propriedades
    public Usuario Doador { get; set; }
    public Usuario ONG { get; set; }
    public string ImagemComprovante { get; set; }
    public bool DoacaoConfirmada { get; set; }
    public double ValorDoacao { get; set; }
    public DateTime DataDoacao { get; set; }
    #endregion
}
