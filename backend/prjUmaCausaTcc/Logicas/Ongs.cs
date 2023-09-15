using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjUmaCausaTcc.Logicas
{
    public class Ongs : Banco
    {
        public List<Usuario> ListarOngsProximas(string latitude, string longitude)
        {
            List<Usuario> ongs = new List<Usuario>();
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro ("latitudeUsuario", latitude),
                new Parametro ("longitudeUsuario", longitude)
            };

            try
            {
                MySqlDataReader dados = Consultar("ListarOngProximas", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        ongs.Add(new Usuario()
                        {
                            Codigo = dados.GetInt32("id_usuario"),
                            Nome = dados.GetString("nm_usuario"),
                            FotoPerfil = dados.GetString("img_fotoPerfil"),
                        });
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
            return ongs;
        }
        public List<Usuario> ListarOngsAleatorias()
        {
            List<Usuario> ongs = new List<Usuario>();

            try
            {
                MySqlDataReader dados = Consultar("ListarOngsAleatorias", null);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        ongs.Add(new Usuario()
                        {
                            Codigo = dados.GetInt32("id_usuario"),
                            Nome = dados.GetString("nm_usuario"),
                            FotoPerfil = dados.GetString("img_fotoPerfil"),
                        });
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
            return ongs;
        }
    }
}