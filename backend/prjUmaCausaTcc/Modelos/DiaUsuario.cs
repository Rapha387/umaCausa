﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DiaUsuario : Banco
{
    #region Propriedades
    public Usuario ONG { get; set; }
    public Dia Dia { get; set; }
    public TimeSpan HorarioInicio { get; set; }
    public TimeSpan HorarioFim { get; set; }
    #endregion

    public bool CadastrarDiaUsuario(Usuario usuario, Dia dia, DateTime inicio, DateTime fim)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdUsuario", usuario.Codigo.ToString()),
            new Parametro ("pIdDia", dia.Codigo.ToString()),
            new Parametro ("pHrInicio", inicio.ToString("HH:mm:ss") ),
            new Parametro ("pHrFim", fim.ToString("HH:mm:ss"))
        };
        try
        {
            Conectar();
            Executar("CadastrarDiaUsuario", parametros);
            Desconectar();
            return true;
        }
        catch (Exception)
        {
            return false;
        }

    }
}