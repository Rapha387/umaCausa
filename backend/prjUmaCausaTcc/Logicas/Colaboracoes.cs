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
                MySqlDataReader dados = Consultar("BuscarDadosMinimosColaboracoesDoUsuario", parametros);
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
    }
}