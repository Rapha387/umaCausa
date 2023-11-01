using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Itens : Banco
{
    public List<TipoItem> ListarTiposItensNaoMonetarios()
    {
        var listaItens = new List<TipoItem>();

        try
        {
            var dados = Consultar("ListarTiposItens", null);

            if (dados.HasRows)
            {
                while (dados.Read())
                {
                    TipoItem tipoItem = new TipoItem();
                    tipoItem.Codigo = dados.GetInt32("id_tipoItem");
                    tipoItem.Nome = dados.GetString("nm_tipoItem");
                    listaItens.Add(tipoItem);
                }
            }

            if (!dados.IsClosed)
                dados.Close();
        }
        catch (Exception)
        {
            throw new Exception("Ocorreu um problema na busca");
        }
        finally
        {
            Desconectar();
        }

        return listaItens;
    }

    public List<TipoItem> ListarTiposItens()
    {
        var listaItens = new List<TipoItem>();

        try
        {
            var dados = Consultar("ListarTiposItensEMonetario", null);

            if (dados.HasRows)
            {
                while (dados.Read())
                {
                    TipoItem tipoItem = new TipoItem();
                    tipoItem.Codigo = dados.GetInt32("id_tipoItem");
                    tipoItem.Nome = dados.GetString("nm_tipoItem");
                    listaItens.Add(tipoItem);
                }
            }

            if (!dados.IsClosed)
                dados.Close();
        }
        catch (Exception)
        {
            throw new Exception("Ocorreu um problema na busca");
        }
        finally
        {
            Desconectar();
        }

        return listaItens;
    }
    public List<TipoItem> ListarItensAceitosOng(int codigoOng)
    {
        var listaItens = new List<TipoItem>();

        var listaParametros = new List<Parametro>()
        {
            new Parametro("pIdUsuario", codigoOng.ToString())
        };

        try
        {
            var dados = Consultar("ListarItensAceitosOng", listaParametros);

            if (dados.HasRows)
            {
                while (dados.Read())
                {
                    TipoItem tipoItem = new TipoItem();
                    tipoItem.Codigo = dados.GetInt32("id_tipoItem");
                    tipoItem.Nome = dados.GetString("nm_tipoItem");
                    listaItens.Add(tipoItem);
                }
            }

            if (!dados.IsClosed)
                dados.Close();
        }
        catch (Exception)
        {
            throw new Exception("Ocorreu um problema na busca");
        }
        finally
        {
            Desconectar();
        }

        return listaItens;
    }
}
