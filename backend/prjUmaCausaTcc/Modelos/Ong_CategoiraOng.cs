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

        public void CadastrarCategoriaOng(Usuario usuario, CategoriaOng categoria)
        {
            List<Parametro> parametros = new List<Parametro>()
            {
            new Parametro ("pIdUsuario", usuario.Codigo.ToString()),
            new Parametro ("pIdCategoria", categoria.Codigo.ToString()),
            };
            try
            {
                Conectar();
                Executar("CadastrarCategoriaOng", parametros);
                Desconectar();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}