using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


public class CategoriasOng : Banco
{
    public List<CategoriaOng> ListarCategoriasOng()
    {
        var listaCategorias = new List<CategoriaOng>();
            
        try 
        {
            var dados = Consultar("ListarCategoriasOng", null);

            if (dados.HasRows)
            {
                while (dados.Read())
                {
                    CategoriaOng categoriaOng = new CategoriaOng();
                    categoriaOng.Codigo = dados.GetInt32("id_categoriaOng");
                    categoriaOng.Nome = dados.GetString("nm_categoria");
                    listaCategorias.Add(categoriaOng);
                }
            }

            if (!dados.IsClosed)
                dados.Close();
        }
        catch(Exception)
        {
            throw new Exception("Ocorreu um problema na busca");
        }
        finally
        {
            Desconectar();
        }

        return listaCategorias;
    }
    public List<CategoriaOng> ListarIDCategoriaDaOng(int codigo)
    {
        var listaCategorias1 = new List<CategoriaOng>();
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdUsuario", codigo.ToString())
        };
        try
        {
            var dados = Consultar("ListarIDCategoriaDaOng", parametros);

            if (dados.HasRows)
            {
                while (dados.Read())
                {
                    CategoriaOng categoriaOng = new CategoriaOng();
                    categoriaOng.Codigo = dados.GetInt32("id_categoriaOng");
                    listaCategorias1.Add(categoriaOng);
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

        return listaCategorias1;
    }
}
    
