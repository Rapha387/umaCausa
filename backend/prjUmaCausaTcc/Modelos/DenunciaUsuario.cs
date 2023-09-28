using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public class DenunciaUsuario
{
    #region Propriedades
    public Usuario Denunciado { get; set; }
    public Usuario Denunciante { get; set; }
    public MotivoDenunciaUsuario Motivo { get; set; }
    public DateTime DataDenuncia { get; set; }
    public string Descricao { get; set; }
    #endregion

    #region metodos
    
    

    #endregion
}
