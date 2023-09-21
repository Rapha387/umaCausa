using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class odesses : Banco
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
            if (dados.IsClosed)
                dados.Close();

            return ODS;
        }
        catch (Exception)
        {
            throw;
        }
        finally { Desconectar(); }
    }
}
