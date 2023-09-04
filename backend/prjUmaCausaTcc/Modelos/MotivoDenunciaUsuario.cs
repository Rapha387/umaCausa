using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class MotivoDenunciaUsuario
{
    #region Propriedades
    public int Codigo { get; private set; }
    public string Nome { get; private set; }
    public ValorMotivoDenuncia ValorMotivoDenuncia { get; private set; }
    public TipoMotivoDenuncia TipoMotivoDenuncia { get; private set; }
    #endregion
}
