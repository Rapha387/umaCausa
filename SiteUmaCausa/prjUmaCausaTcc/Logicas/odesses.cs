using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Odesses : Banco
{
    public List<ODS> BuscarOdsCampanha(int codigo)
    {
        List<ODS> ODS = new List<ODS>();
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdCampanha", codigo.ToString())
        };
        try
        {
            MySqlDataReader dados = Consultar("BuscarImagemCampanhaODS", parametros);
            if (dados.HasRows)
            {
                while (dados.Read())
                {
                    ODS.Add(new ODS() { Codigo = dados.GetInt32("id_ODS"), Foto = dados.GetString("nm_hrefOds") });
                }
            }
            if (!dados.IsClosed)
                dados.Close();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally { Desconectar(); }
        return ODS;
    }

    public List<ODS> ListarOds()
    {
        List<ODS> ODS = new List<ODS>();
        try
        {
            MySqlDataReader dados = Consultar("ListarOds", null);
            if (dados.HasRows)
            {
                while (dados.Read())
                {
                    ODS.Add(new ODS() { Codigo = dados.GetInt32("id_ODS"), Foto = dados.GetString("nm_hrefOds"), Nome = dados.GetString("nm_ods") });
                }
            }
            if (!dados.IsClosed)
                dados.Close();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally { Desconectar(); }

        return ODS;
    }

}
