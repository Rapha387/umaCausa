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
        public List<Campanha> ListarCampanhasPesquisa(string pesquisa)
        {
            List<Campanha> campanhas = new List<Campanha>();
            List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pPesquisa", pesquisa.ToString())
        };

            try
            {
                MySqlDataReader dados = Consultar("ListarCampanhasPesquisa", parametros);
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

        public List<Campanha> ListarMinhasCampanhasPesquisa(string pesquisa, int usuario)
        {
            List<Campanha> campanhas = new List<Campanha>();
            List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pPesquisa", pesquisa.ToString()),
            new Parametro ("pIdUsuario", usuario.ToString())
        };

            try
            {
                MySqlDataReader dados = Consultar("ListarMinhasCampanhasPesquisa", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        campanhas.Add(new Campanha()
                        {
                            Codigo = dados.GetInt32("id_campanha"),
                            Nome = dados.GetString("nm_campanha"),
                            DataPrevistaFim = dados.GetString("dt_fimEsperado"),
                            QuantidadeArrecadada = dados.GetInt32("qt_arrecadado"),
                            DataInicio = dados.GetDateTime("dt_inicioCampanha"),
                        }) ;
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
        public List<Campanha> ListarDadosMinimosCampanhas(int codigo)
        {
            List<Campanha> campanhas = new List<Campanha>();
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro ("pIdUsuario", codigo.ToString())
            };

            try
            {
                MySqlDataReader dados = Consultar("BuscarDadosMinimosCampanhas", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        campanhas.Add(new Campanha()
                        {
                            DataInicio = dados.GetDateTime("dt_inicioCampanha"),
                            Nome = dados.GetString("nm_campanha"),
                            DataPrevistaFim = dados.GetString("dt_fimEsperado"),
                            QuantidadeArrecadada = dados.GetDouble("qt_arrecadado")
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

        public List<Campanha> ListarCampanhasMonetarias(int codigo)
        {
            List<Campanha> campanhas = new List<Campanha>();
            List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pValor", codigo.ToString())
        };
            try
            {
                MySqlDataReader dados = Consultar("ListarCampanhasMonetarias", parametros);
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

        public List<Campanha> ListarCampanhasPorTipo(int codigo, int tipo)
        {
            List<Campanha> campanhas = new List<Campanha>();
            List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pValor", codigo.ToString()),
            new Parametro ("pTipo", tipo.ToString())
        };
            try
            {
                MySqlDataReader dados = Consultar("ListarCampanhasPorTipo", parametros);
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

        public List<Campanha> ListarCampanhasItens(int codigo)
        {
            List<Campanha> campanhas = new List<Campanha>();
            List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pValor", codigo.ToString())
        };
            try
            {
                MySqlDataReader dados = Consultar("ListarCampanhasItens", parametros);
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

        public List<Campanha> ListarCampanhasPorData(int codigo, int data)
        {
            List<Campanha> campanhas = new List<Campanha>();
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro ("vValor", codigo.ToString()),
                new Parametro ("vIcData", data.ToString())
            };
            try
            {
                MySqlDataReader dados = Consultar("ListarCampanhasPorData", parametros);
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
    }
}