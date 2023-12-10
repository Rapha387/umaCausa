using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public abstract class Banco
{
    string linhaConexao = "";
    MySqlConnection conexao = null;
    MySqlCommand cSQL = null;

    public Banco()
    {
        linhaConexao = Conexao.getConexao();
    }

    protected void Conectar()
    {
        try
        {
            conexao = new MySqlConnection(linhaConexao);
            conexao.Open();
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível conectar no Servidor");
        }
    }

    protected void Desconectar()
    {
        try
        {
            if (conexao.State == System.Data.ConnectionState.Open)
                conexao.Close();
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível desconectar do Servidor");
        }
    }

    protected void Executar(string comando)
    {
        Conectar();
        try
        {
            cSQL = new MySqlCommand(comando, conexao);
            cSQL.ExecuteNonQuery();
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível executar o comando");
        }
        finally 
        { 
            Desconectar();
        }
    }

    protected void Executar(string procedure, List<Parametro> valores)
    {
        if (conexao != null)
        {
            MySqlCommand cSQL = new MySqlCommand(procedure, conexao);
            cSQL.CommandType = System.Data.CommandType.StoredProcedure;
            cSQL.Parameters.Clear();

            foreach (Parametro parametro in valores)
            {
                if (parametro != null || parametro.Nome != null)
                    cSQL.Parameters.AddWithValue(parametro.Nome, parametro.Valor);
            }
            cSQL.ExecuteNonQuery();
        }
        else
            throw new Exception("Não foi possível executar o comando");
    }


    protected MySqlDataReader Consultar(string comando)
    { 
        Conectar();
        try
        {
            cSQL = new MySqlCommand(comando, conexao);
            return cSQL.ExecuteReader();
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível realizar a consulta");
        }
    }

    protected MySqlDataReader Consultar(string nomeSP, List<Parametro> valores)
    {
        Conectar();
        try
        {
            cSQL = new MySqlCommand(nomeSP, conexao);
            cSQL.CommandType = System.Data.CommandType.StoredProcedure;
            cSQL.Parameters.Clear();
            if (valores != null)
                if (valores.Count > 0)
                { 
                    for (int i = 0; i < valores.Count; i++)
                    {
                        cSQL.Parameters.AddWithValue(valores[i].Nome, valores[i].Valor.ToString());
                    }
                }

            return cSQL.ExecuteReader();
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível realizar a consulta");
        }
    }
}