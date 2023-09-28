using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjUmaCausaTcc.Logicas
{
    public class MotivosDenunciaUsuario : Banco
    {
        public List<MotivoDenunciaUsuario> ListarMotivosDenunciaUsuario()
        {
            var listaMotivos = new List<MotivoDenunciaUsuario>();
            try
            {
                var dados = Consultar("ListarMotivosDenunciaUsuario", null);

                if (dados.HasRows)
                {
                    while (dados.Read())
                    {
                        var motivoDenuncia = new MotivoDenunciaUsuario();
                        motivoDenuncia.ValorMotivoDenuncia = new ValorMotivoDenuncia();

                        motivoDenuncia.Codigo = int.Parse(dados["id_motivoDenuncia"].ToString());
                        motivoDenuncia.Nome = dados["nm_motivoDenuncia"].ToString();
                        motivoDenuncia.ValorMotivoDenuncia.Codigo = int.Parse(dados["id_motivoValorDenuncia"].ToString());

                        listaMotivos.Add(motivoDenuncia);
                    }
                }
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return listaMotivos;
        }
    }
}