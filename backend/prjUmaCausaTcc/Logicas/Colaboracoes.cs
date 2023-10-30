using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;

namespace prjUmaCausaTcc.Logicas
{
    public class Colaboracoes : Banco
    {
        public List<DoacaoCampanha> ListaDoacoesCampanhas(int codigo)
        {
            List<DoacaoCampanha> doacoes = new List<DoacaoCampanha>();
            List<Parametro> parametros = new List<Parametro>();
            Parametro parametro1 = new Parametro("pIdUsuario", codigo.ToString());
            parametros.Add(parametro1);

            try
            {
                MySqlDataReader dados = Consultar("BuscarDadosMinimosColaboracoesCampanhaDoUsuario", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Campanha campanha = new Campanha();
                        campanha.BuscarCampanha(dados.GetInt32("id_campanha"));
                        Usuario usuario = new Usuario(codigo);
                        bool confirmado = false;
                        if (dados.GetInt32("ic_doacaoConfirmada") == 0 || dados.GetInt32("ic_doacaoConfirmada") == null)
                        {
                            confirmado = false;
                        }
                        else
                        {
                            confirmado = true;
                        };
                        DoacaoCampanha doacao = new DoacaoCampanha()
                        {
                            Campanha = campanha,
                            Doador = usuario,
                            DataDoacao = DateTime.Parse(dados.GetString("dt_doacao")),
                            QuantidadeDoado = dados.GetString("qt_doado"),
                            DoacaoConfirmada = confirmado,
                            Codigo = dados.GetInt32("id_doacao")
                        };
                        if (!String.IsNullOrEmpty(dados["dt_respostaOng"].ToString()))
                            doacao.RespostaOng = DateTime.Parse(dados["dt_respostaOng"].ToString());
                        doacoes.Add(doacao);
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
            return doacoes;
        }
        public List<DoacaoItem> ListaDoacoesItems(int codigo)
        {
            List<DoacaoItem> doacoes = new List<DoacaoItem>();
            List<Parametro> parametros = new List<Parametro>();
            Parametro parametro1 = new Parametro("pIdUsuario", codigo.ToString());
            parametros.Add(parametro1);
            try
            {
                MySqlDataReader dados = Consultar("BuscarDadosMinimosColaboracoesItemDoUsuario", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Usuario ong = new Usuario(dados.GetString("nm_usuario"));
                        Usuario usuario = new Usuario(codigo);
                        bool confirmado = false;
                        if (dados.GetInt32("ic_doacaoConfirmada") == 0)
                        {
                            confirmado = false;
                        }
                        else
                        {
                            confirmado = true;
                        };
                        DoacaoItem doacao = new DoacaoItem()
                        {
                            ONG = ong,
                            Doador = usuario,
                            DataDoacao = DateTime.Parse(dados.GetString("dt_doacao")),
                            Quantidade = dados.GetString("qt_item"),
                            DoacaoConfirmada = confirmado,
                            NomeItem = dados.GetString("nm_item"),
                            Codigo = dados.GetInt32("id_doacao")
                        };
                        if (!String.IsNullOrEmpty(dados["dt_respostaOng"].ToString()))
                            doacao.respostaOng = DateTime.Parse(dados["dt_respostaOng"].ToString());
                        doacoes.Add(doacao);
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
            return doacoes;
        }

        public List<DoacaoMonetaria> ListaDoacoesMonetarias(int codigo)
        {
            List<DoacaoMonetaria> doacoes = new List<DoacaoMonetaria>();
            List<Parametro> parametros = new List<Parametro>();
            Parametro parametro1 = new Parametro("pIdUsuario", codigo.ToString());
            parametros.Add(parametro1);
            try
            {
                MySqlDataReader dados = Consultar("BuscarDadosMinimosColaboracoesMonetariaDoUsuario", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Usuario ong = new Usuario(dados.GetString("nm_usuario"));
                        Usuario usuario = new Usuario(codigo);
                        bool confirmado = false;
                        if (dados.GetInt32("ic_doacaoConfirmada") == 0)
                        {
                            confirmado = false;
                        }
                        else
                        {
                            confirmado = true;
                        };
                        DoacaoMonetaria doacao = new DoacaoMonetaria()
                        {
                            ONG = ong,
                            Doador = usuario,
                            DataDoacao = DateTime.Parse(dados.GetString("dt_doacao")),
                            ValorDoacao = dados.GetDouble("vl_monetario"),
                            DoacaoConfirmada = confirmado,
                            CodigoDoacao = dados.GetInt32("id_doacao")
                        };
                        if (!String.IsNullOrEmpty(dados["dt_respostaOng"].ToString()))
                            doacao.respostaOng = DateTime.Parse(dados["dt_respostaOng"].ToString());
                        doacoes.Add(doacao);
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
            return doacoes;
        }

        public List<DoacaoCampanha> ListarDoacoesCampanhasMonetariasConfirmadasOuNao(int codigoOng, bool confirmacao )
        {
            
            List<DoacaoCampanha> doacoes = new List<DoacaoCampanha>();
            List<Parametro> parametros = new List<Parametro>();
            Parametro parametro1 = new Parametro("pIdUsuarioOng", codigoOng.ToString());
            parametros.Add(parametro1);
            
            try
            {
                MySqlDataReader dados = null;
                if (confirmacao == true)
                {
                     dados = Consultar("BuscarDoacoesCampanhaMonetariaConfirmadas", parametros);
                }
                else
                {
                     dados = Consultar("BuscarDoacoesCampanhaMonetariaNaoConfirmadas", parametros);
                }
                
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Usuario doador = new Usuario(dados.GetString("nm_usuario"));
                        Campanha campanha = new Campanha();
                        campanha.BuscarCampanha(dados.GetInt32("id_campanha"));
                        bool doacaoConfirmada = false;
                        if (confirmacao == true)
                        {
                            if(dados.GetString("ic_doacaoConfirmada") == "1")
                            {
                                doacaoConfirmada = true;
                            }
                            else
                            {
                                doacaoConfirmada =false;
                            }
                        }
                        DoacaoCampanha doacao = new DoacaoCampanha()
                        {
                            Campanha = campanha,
                            Doador = doador,
                            DataDoacao = DateTime.Parse(dados.GetString("dt_doacao")),
                            QuantidadeDoado = dados.GetString("qt_doado"),
                            DoacaoConfirmada = doacaoConfirmada,
                            Codigo = dados.GetInt32("id_doacao")
                        };
                        doacoes.Add(doacao);
                    }
                }
            }
            catch (Exception)
            {
                throw new Exception("Houve um problema a realizar a busca");
            }
            finally { Desconectar(); }
            return doacoes;
        }

        public List<DoacaoCampanha> ListarDoacoesCampanhasItensConfirmadasOuNao(int codigoOng, bool confirmacao)
        {
            List<DoacaoCampanha> doacoes = new List<DoacaoCampanha>();
            List<Parametro> parametros = new List<Parametro>();
            Parametro parametro1 = new Parametro("pIdUsuarioOng", codigoOng.ToString());
            parametros.Add(parametro1);
            try
            {
                MySqlDataReader dados = null;
                if (confirmacao == true)
                {
                    
                    dados = Consultar("BuscarDoacoesCampanhaItensConfirmadas", parametros);
                }
                else
                {
                   dados = Consultar("BuscarDoacoesCampanhaItensNaoConfirmadas", parametros);
                }
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Usuario doador = new Usuario(dados.GetString("nm_usuario"));
                        Campanha campanha = new Campanha();
                        campanha.BuscarCampanha(dados.GetInt32("id_campanha"));
                        TipoItem tipoitem = new TipoItem(dados.GetString("nm_tipoItem"));
                        bool doacaoConfirmada = false;
                        if (confirmacao == true)
                        {
                            if (dados.GetString("ic_doacaoConfirmada") == "1")
                            {
                                doacaoConfirmada = true;
                            }
                            else
                            {
                                doacaoConfirmada = false;
                            }
                        }
                        DoacaoCampanha doacao = new DoacaoCampanha()
                        {
                            Campanha = campanha,
                            Doador = doador,
                            TipoItem = tipoitem,
                            DataDoacao = DateTime.Parse(dados.GetString("dt_doacao")),
                            QuantidadeDoado = dados.GetString("qt_doado"),
                            DoacaoConfirmada = doacaoConfirmada,
                            Codigo = dados.GetInt32("id_doacao")
                        };
                        doacoes.Add(doacao);
                    }
                }
            }
            catch (Exception)
            {
                throw new Exception("Houve um problema a realizar a busca");
            }
            finally { Desconectar(); }
            return doacoes;
        }
        public List<DoacaoMonetaria> ListarDoacoesMonetariasConfirmadasOuNao(int codigoOng, bool confirmacao)
        {
            Usuario ong = new Usuario(codigoOng);
            List<DoacaoMonetaria> doacoes = new List<DoacaoMonetaria>();
            List<Parametro> parametros = new List<Parametro>();
            Parametro parametro1 = new Parametro("pIdUsuario", codigoOng.ToString());
            parametros.Add(parametro1);
            try
            {
                MySqlDataReader dados = null;
                if (confirmacao == true)
                {
                    dados = Consultar("BuscarDoacoesMonetariasConfirmadas", parametros);
                }
                else
                {
                    dados = Consultar("BuscarDoacoesMonetariasNaoConfirmadas", parametros);
                }
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Usuario doador = new Usuario(dados.GetString("nm_usuario"));
                        bool doacaoConfirmada = false;
                        if (confirmacao == true)
                        {
                            if (dados.GetString("ic_doacaoConfirmada") == "1")
                            {
                                doacaoConfirmada = true;
                            }
                            else
                            {
                                doacaoConfirmada = false;
                            }
                        }
                        DoacaoMonetaria doacao = new DoacaoMonetaria()
                        {
                            ONG = ong,
                            Doador = doador,
                            DataDoacao = DateTime.Parse(dados.GetString("dt_doacao")),
                            ValorDoacao = dados.GetDouble("vl_monetario"),
                            DoacaoConfirmada = doacaoConfirmada,
                            CodigoDoacao = dados.GetInt32("id_doacao")
                        };
                        doacoes.Add(doacao);
                    }
                }
            }
            catch (Exception)
            {
                throw new Exception("Houve um problema a realizar a busca");
            }
            finally { Desconectar(); }
            return doacoes;
        }
        public List<DoacaoItem> ListarDoacoesItensConfirmadasOuNao(int codigoOng, bool confirmacao)
        {
            List<DoacaoItem> doacoes = new List<DoacaoItem>();
            List<Parametro> parametros = new List<Parametro>();
            Parametro parametro1 = new Parametro("pIdUsuario", codigoOng.ToString());
            parametros.Add(parametro1);
            try
            {
                MySqlDataReader dados = null;
                if (confirmacao == true)
                {
                    dados = Consultar("BuscarDoacoesItensConfirmadas", parametros);
                }
                else{
                    dados = Consultar("BuscarDoacoesItensNaoConfirmadas", parametros);
                }
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Usuario doador = new Usuario(dados.GetString("nm_usuario"));
                        bool doacaoConfirmada = false;
                        if (confirmacao == true)
                        {
                            if (dados.GetString("ic_doacaoConfirmada") == "1")
                            {
                                doacaoConfirmada = true;
                            }
                            else
                            {
                                doacaoConfirmada = false;
                            }
                        }
                        DoacaoItem doacao = new DoacaoItem()
                        {
                            Doador = doador,
                            NomeItem = dados.GetString("nm_item"),
                            Quantidade = dados.GetString("qt_item"),
                            DataDesejada = dados.GetString("dt_doacao"),
                            HorarioDesejado = dados.GetString("hr_doacao"),
                            DoacaoConfirmada = doacaoConfirmada,
                            Codigo = dados.GetInt32("id_doacao")
                        };
                        doacoes.Add(doacao);
                    }
                }
            }
            catch (Exception)
            {
                throw new Exception("Houve um problema a realizar a busca");
            }
            finally { Desconectar(); }
            return doacoes;
        }

        public List<DoacaoCampanha> ListaDoacoesCampanhasPesquisa(int codigo, string pesquisa)
        {
            List<DoacaoCampanha> doacoes = new List<DoacaoCampanha>();
            List<Parametro> parametros = new List<Parametro>();
            Parametro parametro1 = new Parametro("pIdUsuario", codigo.ToString());
            Parametro parametro2 = new Parametro("pPesquisa", pesquisa);
            parametros.Add(parametro1);
            parametros.Add(parametro2);

            try
            {
                MySqlDataReader dados = Consultar("BuscarDadosMinimosColaboracoesCampanhaDoUsuarioPesquisa", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Campanha campanha = new Campanha();
                        campanha.BuscarCampanha(dados.GetInt32("id_campanha"));
                        Usuario usuario = new Usuario(codigo);
                        bool confirmado = false;
                        if (dados.GetInt32("ic_doacaoConfirmada") == 0 || dados.GetInt32("ic_doacaoConfirmada") == null)
                        {
                            confirmado = false;
                        }
                        else
                        {
                            confirmado = true;
                        };
                        DoacaoCampanha doacao = new DoacaoCampanha()
                        {
                            Campanha = campanha,
                            Doador = usuario,
                            DataDoacao = DateTime.Parse(dados.GetString("dt_doacao")),
                            QuantidadeDoado = dados.GetString("qt_doado"),
                            DoacaoConfirmada = confirmado
                        };
                        if (!String.IsNullOrEmpty(dados["dt_respostaOng"].ToString()))
                            doacao.RespostaOng = DateTime.Parse(dados["dt_respostaOng"].ToString());
                        doacoes.Add(doacao);
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
            return doacoes;
        }
        public List<DoacaoItem> ListaDoacoesItemsPesquisa(int codigo, string pesquisa)
        {
            List<DoacaoItem> doacoes = new List<DoacaoItem>();
            List<Parametro> parametros = new List<Parametro>();
            Parametro parametro1 = new Parametro("pIdUsuario", codigo.ToString());
            Parametro parametro2 = new Parametro("pPesquisa", pesquisa);
            parametros.Add(parametro1);
            parametros.Add(parametro2);
            try
            {
                MySqlDataReader dados = Consultar("BuscarDadosMinimosColaboracoesItemDoUsuarioPesquisa", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Usuario ong = new Usuario(dados.GetString("nm_usuario"));
                        Usuario usuario = new Usuario(codigo);
                        bool confirmado = false;
                        if (dados.GetInt32("ic_doacaoConfirmada") == 0)
                        {
                            confirmado = false;
                        }
                        else
                        {
                            confirmado = true;
                        };
                        DoacaoItem doacao = new DoacaoItem()
                        {
                            ONG = ong,
                            Doador = usuario,
                            DataDoacao = DateTime.Parse(dados.GetString("dt_doacao")),
                            Quantidade = dados.GetString("qt_item"),
                            DoacaoConfirmada = confirmado,
                            NomeItem = dados.GetString("nm_item"),
                        };
                        if (!String.IsNullOrEmpty(dados["dt_respostaOng"].ToString()))
                            doacao.respostaOng = DateTime.Parse(dados["dt_respostaOng"].ToString());
                        doacoes.Add(doacao);
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
            return doacoes;
        }

        public List<DoacaoMonetaria> ListaDoacoesMonetariasPesquisa(int codigo, string pesquisa)
        {
            List<DoacaoMonetaria> doacoes = new List<DoacaoMonetaria>();
            List<Parametro> parametros = new List<Parametro>();
            Parametro parametro1 = new Parametro("pIdUsuario", codigo.ToString());
            Parametro parametro2 = new Parametro("pPesquisa", pesquisa);
            parametros.Add(parametro1);
            parametros.Add(parametro2);
            try
            {
                MySqlDataReader dados = Consultar("BuscarDadosMinimosColaboracoesMonetariaDoUsuarioPesquisa", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Usuario ong = new Usuario(dados.GetString("nm_usuario"));
                        Usuario usuario = new Usuario(codigo);
                        bool confirmado = false;
                        if (dados.GetInt32("ic_doacaoConfirmada") == 0)
                        {
                            confirmado = false;
                        }
                        else
                        {
                            confirmado = true;
                        };
                        DoacaoMonetaria doacao = new DoacaoMonetaria()
                        {
                            ONG = ong,
                            Doador = usuario,
                            DataDoacao = DateTime.Parse(dados.GetString("dt_doacao")),
                            ValorDoacao = dados.GetDouble("vl_monetario"),
                            DoacaoConfirmada = confirmado
                        };
                        if (!String.IsNullOrEmpty(dados["dt_respostaOng"].ToString()))
                            doacao.respostaOng = DateTime.Parse(dados["dt_respostaOng"].ToString());
                        doacoes.Add(doacao);
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
            return doacoes;
        }
    }
}