using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

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
        public int ListarIndiceOngs()
        {
            int indice = 0;
            try
            {
                MySqlDataReader dados = Consultar("ListarIndiceOngs", null);
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
        public List<Usuario> ListarOngs(int limite)
        {
            List<Usuario> usuarios= new List<Usuario>();
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro ("pValor", limite.ToString())
            };
            try
            {
                MySqlDataReader dados = Consultar("ListarOngs", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        Usuario usuario = new Usuario()
                        {
                            Codigo = dados.GetInt32("id_usuario"),
                            Nome = dados.GetString("nm_usuario"),
                            Descricao = dados.GetString("ds_usuario"),
                            FotoPerfil = dados.GetString("img_fotoPerfil")
                        };
                        CategoriaOng categoriaOng = new CategoriaOng() { Nome = dados.GetString("nm_categoria"), Codigo = dados.GetInt32("id_categoriaOng") };
                        usuario.CategoriaOng = categoriaOng;
                        usuarios.Add(usuario);
                    }
                }
                if (dados.IsClosed)
                    dados.Close();

                return usuarios;
            }
            catch (Exception)
            {

                throw;
            }
            finally { Desconectar(); }

        }

        public List<Usuario> ListarOngsPorCategoria(int limite, int categoria)
        {
            List<Usuario> ongs = new List<Usuario>();
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro ("pValor", limite.ToString()),
                new Parametro ("pCategoria", categoria.ToString())
            };
            try
            {
                MySqlDataReader dados = Consultar("ListarOngsPorCategoria", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        ongs.Add(new Usuario()
                        {
                            Codigo = dados.GetInt32("id_usuario"),
                            Nome = dados.GetString("nm_usuario"),
                            Descricao = dados.GetString("ds_usuario"),
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

        public List<Usuario> ListarOngsPorEstado(int limite, string estado)
        {
            List<Usuario> ongs = new List<Usuario>();
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro ("pValor", limite.ToString()),
                new Parametro ("pEstado", estado.ToString().ToLower())
            };
            try
            {
                MySqlDataReader dados = Consultar("ListarOngsPorEstado", parametros);
                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        ongs.Add(new Usuario()
                        {
                            Codigo = dados.GetInt32("id_usuario"),
                            Nome = dados.GetString("nm_usuario"),
                            Descricao = dados.GetString("ds_usuario"),
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