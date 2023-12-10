using MySql.Data.MySqlClient;
using prjUmaCausaTcc.pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class CampanhaODS : Banco
{
    #region Propriedades
    public Campanha Campanha { get; private set; }
    public ODS ODS { get; private set; }
    #endregion

    #region Metódos
    public void CadastrarCampanhaOds(int campanha, int ods)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pCampanha", campanha.ToString()),
            new Parametro ("pOds", ods.ToString())
        };
        try
        {
            Conectar();
            Executar("CadastrarCampanhaOds", parametros);
        }
        catch (Exception)
        {
            throw new Exception("Erro ao Cadastrar ODS!");
        }
        finally
        {
            Desconectar();
        }
    }

    public void DeletarCampanhaOds(int campanha, int ods)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pCampanha", campanha.ToString()),
            new Parametro ("pOds", ods.ToString())
        };
        try
        {
            Conectar();
            Executar("DeletarCampanhaODS", parametros);
        }
        catch (Exception)
        {
            throw new Exception("Erro ao Deletar ODS!");
        }
        finally
        {
            Desconectar();
        }
    }
    #endregion
}
