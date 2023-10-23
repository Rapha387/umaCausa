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
    }
}