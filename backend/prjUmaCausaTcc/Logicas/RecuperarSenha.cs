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
    public int RecuperarCodigoRecuperacao(string email)
    {
        try
        {
            int codigo = 0;
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro("pEmail",email),
            };
            MySqlDataReader dados = Consultar("RecuperarCodigoRecuperacao", parametros);
            if (dados.HasRows)
            {
                if (dados.Read())
                {
                    codigo = dados.GetInt32("codigo");
                }
            }
            if (!dados.IsClosed)
            { dados.Close(); }
            return codigo;
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
            return validacao;
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

    public bool VerificarCodigoRecuperacao(int codigo,string email)
    {
        bool validacao = false;
        try
        {
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro("pEmail",email),
                new Parametro("pCodigo",codigo.ToString()),
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
            return validacao;
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
}
