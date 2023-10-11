using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
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
                        DoacaoCampanha doacao = new DoacaoCampanha() {
                           Campanha = campanha,
                            Doador = usuario,
                            DataDoacao = DateTime.Parse(dados.GetString("dt_doacao")),
                            QuantidadeDoado = dados.GetString("qt_doado"),
                            DoacaoConfirmada = confirmado};
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

        public List<DoacaoCampanha> ListarDoacoesCampanhaNaoConfirmadas(int codigoOng)
        {
            List<DoacaoCampanha> doacoes = new List<DoacaoCampanha>();
            List<Parametro> parametros = new List<Parametro>();
            Parametro parametro1 = new Parametro("pIdUsuario", codigoOng.ToString());
            parametros.Add(parametro1);
            try
            {
                MySqlDataReader dados = Consultar("BuscarDoacoesCampanhaMonetariaNaoConfirmadas", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Usuario doador = new Usuario(dados.GetString("nm_usuario"));
                        Campanha campanha = new Campanha();
                        campanha.BuscarCampanha(dados.GetInt32("id_campanha"));
                        DoacaoCampanha doacao = new DoacaoCampanha()
                        {
                            Campanha = campanha,
                            Doador = doador,
                            DataDoacao = DateTime.Parse(dados.GetString("dt_doacao")),
                            QuantidadeDoado = dados.GetString("qt_doado"),
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
    }
}