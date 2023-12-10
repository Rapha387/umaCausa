using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DivulgacaoItem
{
    #region Propriedades
    protected int Codigo { get; set; }
    public string Descricao { get; set; }
    public int QuantidadeDivulgada { get; set; }
    public DateTime DataInicio { get; set; }
    public DateTime DataFim { get; set; }
    public string Foto { get; set; }
    public EstadoItem EstadoItem { get; set; }
    public TipoItem TipoItem { get; set; }
    public Usuario Doador { get; set; }
    #endregion
}
