using prjUmaCausaTcc.pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjUmaCausaTcc.Modelos
{
    public class Ong_CategoiraOng : Banco
    {
        public Usuario Ong { get; set; }
        public CategoriaOng Categoria { get; set; }

        public void CadastrarOngCategoriaOng(int codigoUsuario, int codigoCategoria)
        {
            List<Parametro> parametros = new List<Parametro>()
            {
            new Parametro ("pIdUsuario", codigoUsuario.ToString()),
            new Parametro ("pIdCategoria", codigoCategoria.ToString()),
            };
            try
            {
                Conectar();
                Executar("CadastrarOngCategoriaOng", parametros);
                
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally { Conectar(); }
        }
        public void DeletarOngCategoriaOng(int codigoUsuario, int codigoCategoria)
        {
            List<Parametro> parametros = new List<Parametro>()
            {
            new Parametro ("pIdUsuario", codigoUsuario.ToString()),
            new Parametro ("pIdCategoria", codigoCategoria.ToString()),
            };
            try
            {
                Conectar();
                Executar("DeletarOngCategoriaOng", parametros);
                
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally { Desconectar(); }
        }
    }
}