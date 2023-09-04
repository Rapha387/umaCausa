using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public class DenunciaCampanha
{
    #region Propriedades
    public Campanha CampanhaDenunciada { get; set; }
    public DateTime DataDenuncia { get; set; }
    public string Descricao { get; set; }
    public MotivoDenunciaCampanha Motivo { get; set; }
    public Usuario Denunciante { get; set; }
    #endregion
}