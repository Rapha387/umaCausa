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
                        doacoes.Add(new DoacaoCampanha()
                        {
                            //Banner = dados.GetString("img_bannerCampanha"),
                            //Nome = dados.GetString("nm_campanha"),
                            //Codigo = dados.GetInt32("id_campanha"),
                            //PorcentagemArrecadado = dados.GetInt32("perc")
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
            return doacoes;
        }   
    }
}