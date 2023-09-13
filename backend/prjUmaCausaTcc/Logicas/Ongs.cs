using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjUmaCausaTcc.Logicas
{
    public class Ongs : Banco
    {
        public List<Usuario> ListarOngsProximas()
        {
            List<Campanha> ongs = new List<Campanha>();
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro ("vIcData", 0.ToString())
            };

            try
            {
                MySqlDataReader dados = Consultar("ListarCampanhasPorData", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        ongs.Add(new Campanha()
                        {
                            Codigo = dados.GetInt32("id_campanha"),
                            Nome = dados.GetString("nm_campanha"),
                            Banner = dados.GetString("img_bannerCampanha"),
                            //PorcentagemArrecadado = dados.GetInt32("perc")
                        });
                    }
                }
                if (!dados.IsClosed)
                { dados.Close(); }

            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
            finally { Desconectar(); }

            return ongs;
        }
    }
    }
}