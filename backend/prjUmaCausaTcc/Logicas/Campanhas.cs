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
            }
            catch (Exception)
            {

                throw new Exception("Houve um problema a realizar a busca");
            }
            finally { Desconectar(); }

            return campanhas;
        }
        public List<Campanha> ListarCampanhasASC(int codigo)
        {
            List<Campanha> campanhas = new List<Campanha>();
            List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pValor", codigo.ToString())
        };

            try
            {
                MySqlDataReader dados = Consultar("ListarCampanhas", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        campanhas.Add(new Campanha()
                        {
                            Codigo = dados.GetInt32("id_campanha"),
                            Nome = dados.GetString("nm_campanha"),
                            Banner = dados.GetString("img_bannerCampanha"),
                            DataPrevistaFim = dados.GetString("dt_fimEsperado"),
                            PorcentagemArrecadado = dados.GetInt32("perc"),
                            TipoItemArrecadado = new TipoItem()
                            {
                                Codigo = dados.GetInt32("id_tipoItem"),
                                Nome = dados.GetString("nm_tipoItem")
                            }
                        });
                    }
                }
                if (!dados.IsClosed)
                { dados.Close(); }
            }
            catch (Exception)
            {

                throw new Exception("Houve um problema a realizar a busca");
            }
            finally { Desconectar(); }

            return campanhas;
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
                
            }
            catch (Exception)
            {

                throw new Exception("Houve um problema a realizar a busca");
            }
            finally { Desconectar(); }

            return campanhas;
        }
        public List<Campanha> ListarCampanhasPertoDeAcabar()
        {
            List<Campanha> campanhas = new List<Campanha>();

            try
            {
                MySqlDataReader dados = Consultar("ListarCampanhasAcabando", null);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        campanhas.Add(new Campanha()
                        {
                            Codigo = dados.GetInt32("id_campanha"),
                            Nome = dados.GetString("nm_campanha"),
                            Banner = dados.GetString("img_bannerCampanha"),
                            DataPrevistaFim = dados.GetString("dt_fimEsperado"),
                            PorcentagemArrecadado = dados.GetInt32("perc"),
                            TipoItemArrecadado = new TipoItem() { Codigo = dados.GetInt32("id_tipoItem"), Nome = dados.GetString("nm_tipoItem")}
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

            return campanhas;
        }
        public List<Campanha> ListarCampanhasAleatorias()
        {
            List<Campanha> campanhas = new List<Campanha>();

            try
            {
                MySqlDataReader dados = Consultar("ListarCampanhasAleatorias", null);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        campanhas.Add(new Campanha()
                        {
                            Codigo = dados.GetInt32("id_campanha"),
                            Nome = dados.GetString("nm_campanha"),
                            Banner = dados.GetString("img_bannerCampanha"),
                            DataPrevistaFim = dados.GetString("dt_fimEsperado"),
                            PorcentagemArrecadado = dados.GetInt32("perc"),
                            TipoItemArrecadado = new TipoItem() 
                            { 
                                Codigo = dados.GetInt32("id_tipoItem"), 
                                Nome = dados.GetString("nm_tipoItem") 
                            }
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

            return campanhas;
        }
        public int ListarIndiceCampanhas()
        {
            int indice = 0;
            try
            {
                MySqlDataReader dados = Consultar("ListarIndiceCampanhas", null);
                if (dados.HasRows)
                {
                    if (dados.Read())
                    {
                        indice = dados.GetInt32("indice");
                    }
                }
                if (!dados.IsClosed)
                    dados.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                Desconectar();
            }
            return indice;
        }
    }
}