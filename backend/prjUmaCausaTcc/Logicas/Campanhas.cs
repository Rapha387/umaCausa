using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjUmaCausaTcc.Logicas
{
    public class Campanhas : Banco
    {
        public List<Campanha> ListarDadosMinimosCampanhasDaOng(int codigo)
        {
            List<Campanha> campanhas = new List<Campanha>();
            List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdUsuario", codigo.ToString())
        };

            try
            {
                Conectar();
                MySqlDataReader dados = Consultar("ListarDadosMinimosCampanhasDaOng", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        campanhas.Add(new Campanha()
                        {
                            Banner = dados.GetString("img_bannerCampanha"),
                            Nome = dados.GetString("nm_campanha"),
                            Codigo = dados.GetInt32("id_campanha"),
                            PorcentagemArrecadado = dados.GetInt32("perc")
                        });
                    }
                }
                if (!dados.IsClosed)
                { dados.Close(); }
                return campanhas;
            }
            catch (Exception)
            {

                throw new Exception("Houve um problema a realizar a busca");
            }
            finally { Desconectar(); }
        }

        public List<Campanha> ListarDadosMinimosCampanhasFinalizadasDaOng(int codigo)
        {
            List<Campanha> campanhas = new List<Campanha>();
            List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdUsuario", codigo.ToString())
        };

            try
            {
                Conectar();
                MySqlDataReader dados = Consultar("ListarDadosMinimosCampanhasFinalizadasDaOng", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        campanhas.Add(new Campanha()
                        {
                            Banner = dados.GetString("img_bannerCampanha"),
                            Nome = dados.GetString("nm_campanha"),
                            Codigo = dados.GetInt32("id_campanha"),
                            PorcentagemArrecadado = dados.GetInt32("perc")
                        });
                    }
                }
                if (!dados.IsClosed)
                { dados.Close(); }
                return campanhas;
            }
            catch (Exception)
            {

                throw new Exception("Houve um problema a realizar a busca");
            }
            finally { Desconectar(); }
        }
    }
}