using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

public class DiaUsuario : Banco
{
    #region Propriedades
    public Usuario ONG { get; set; }
    public Dia Dia { get; set; }
    public DateTime HorarioInicio { get; set; }
    public DateTime HorarioFim { get; set; }
    #endregion

    public void CadastrarDiaUsuario(int codigoUsuario, int codigoDia, DateTime inicio, DateTime fim)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdUsuario", codigoUsuario.ToString()),
            new Parametro ("pIdDia", codigoDia.ToString()),
            new Parametro ("pHrInicio", inicio.ToString("HH:mm")),
            new Parametro ("pHrFim", fim.ToString("HH:mm"))
        };
        try
        {
            Conectar();
            Executar("CadastrarDiasUsuario", parametros);
            Desconectar();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
}
