using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class RecuperarSenha : Banco
{
    public void GerarCodigoRecuperacao(string email)
    {
        try
        {
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro("pEmail",email),
            };
            Conectar();
            Executar("GerarCodigoRecuperacao", parametros);
        }
        catch (Exception)
        {
            throw new Exception("Ocorreu um problema na busca");
        }
        finally
        {
            Desconectar();
        }
    }

    public void ExcluirCodigoRecuperacao(string email)
    {
        try
        {
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro("pEmail",email),
            };
            Conectar();
            Executar("ExcluirCodigosExpirados", parametros);
        }
        catch (Exception)
        {
            throw new Exception("Ocorreu um problema na busca");
        }
        finally
        {
            Desconectar();
        }
    }
    public string RecuperarCodigoRecuperacao(string email)
    {
        string codigo = "";
        try
        {
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro("pEmail",email),
            };
            MySqlDataReader dados = Consultar("RecuperarCodigoRecuperacao", parametros);
            if (dados.HasRows)
            {
                if (dados.Read())
                {
                    codigo = dados.GetString("codigo");
                }
            }
            if (!dados.IsClosed)
            { dados.Close(); }
        }
        catch (Exception)
        {
            throw new Exception("Ocorreu um problema na busca");
        }
        finally
        {
            Desconectar();
        }
        return codigo;
    }

    public bool VerificarExistenciaEmail(string email)
    {
        bool validacao = false;
        try
        {
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro("pEmail",email),
            };
            MySqlDataReader dados = Consultar("VerificarExistenciaEmail", parametros);
            if (dados.HasRows)
            {  
                validacao = true;
            }
            else
            {
                validacao = false;
            }
            if (!dados.IsClosed)
            { dados.Close(); }
        }
        catch (Exception)
        {
            throw new Exception("Ocorreu um problema na busca");
        }
        finally
        {
            Desconectar();
        }
        return validacao;
    }

    public bool VerificarCodigoRecuperacao(string codigo,string email)
    {
        bool validacao = false;
        try
        {
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro("pEmail",email),
                new Parametro("pCodigo",codigo),
            };
            MySqlDataReader dados = Consultar("VerificarCodigoRecuperacao", parametros);
            if (dados.HasRows)
            {
                if (dados.Read())
                {
                    if (Convert.ToBoolean(dados[0]))
                        validacao = true;
                    else
                        validacao = false;
                }
            }
            if (!dados.IsClosed)
            { dados.Close(); }
        }
        catch (Exception)
        {
            throw new Exception("Ocorreu um problema na busca");
        }
        finally
        {
            Desconectar();
        }
        return validacao;
    }
}
