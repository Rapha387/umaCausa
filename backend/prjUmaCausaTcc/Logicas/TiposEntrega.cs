using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjUmaCausaTcc.Logicas
{
    public class TiposEntrega : Banco
    {
        public List<TipoEntrega> ListarTiposEntrega()
        {
            var listaTiposEntrega = new List<TipoEntrega>();

            try
            {
                var dados = Consultar("ListarTiposEntrega", null);

                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        TipoEntrega tipoEntrega = new TipoEntrega();
                        tipoEntrega.Codigo = dados.GetInt32("id_tipoEntrega");
                        tipoEntrega.Nome = dados.GetString("nm_tipoEntrega");
                        listaTiposEntrega.Add(tipoEntrega);
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

            return listaTiposEntrega;
        }
    }
}