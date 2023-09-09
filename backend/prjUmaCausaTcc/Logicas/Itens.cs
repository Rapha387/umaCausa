using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjUmaCausaTcc.Logicas
{
    public class Itens : Banco
    {
        public List<TipoItem> ListarTiposItens()
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
    }
}