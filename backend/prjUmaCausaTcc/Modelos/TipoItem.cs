using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class TipoItem : Banco
{
    public TipoItem()
    {
    }
    
    #region construtores
    public TipoItem(string nome)
    {
        Nome = nome;
    }

    public TipoItem(int codigo)
    {
        Codigo = codigo;
    }
    #endregion

    #region Propriedades
    public int Codigo { get; set; }
    public string Nome { get; set; }
    public string Imagem { get; set; }
    #endregion
}