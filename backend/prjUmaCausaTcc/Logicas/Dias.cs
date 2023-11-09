using MySql.Data.MySqlClient;
using Org.BouncyCastle.Asn1.IsisMtt;
using prjUmaCausaTcc.pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;

namespace prjUmaCausaTcc.Logicas
{
    public class Dias : Banco
    {

        public List<Dia> ListarDias()
        {
            var listaDias = new List<Dia>();

            try
            {
                var dados = Consultar("ListarDias" ,null);

                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Dia dia = new Dia();
                        dia.Nome = dados["nm_dia"].ToString();
                        dia.Codigo = int.Parse(dados["id_dia"].ToString());

                        listaDias.Add(dia);
                    }
                }
                
                if(!dados.IsClosed)
                    dados.Close();
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                Desconectar();
            }

            return listaDias;
        }
        public List<DiaUsuario> ListarDiasDisponiveisOng(int codigo)
        {
            List<DiaUsuario> listaDias1 = new List<DiaUsuario>();
            List<Parametro> parametros = new List<Parametro>();
            Parametro parametro1 = new Parametro("pIdOng", codigo.ToString());
            parametros.Add(parametro1);
            Usuario ong = new Usuario(codigo);
            try
            {
                MySqlDataReader dados = Consultar("BuscarDiasDisponiveisOng", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Dia dia = new Dia(dados.GetInt32("id_dia"));
                        DiaUsuario diasUsuario = new DiaUsuario()
                        {
                            ONG = ong,
                            Dia = dia,
                            HorarioInicio = DateTime.Parse(dados.GetString("hr_inicio")),
                            HorarioFim = DateTime.Parse(dados.GetString("hr_fim"))
                        };
                        listaDias1.Add(diasUsuario);
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
            return listaDias1;
        }
    }
}