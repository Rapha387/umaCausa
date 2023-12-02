using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class CategoriaOng : Banco
{
    #region Propriedades
    public int Codigo { get; set; }
    public string Nome { get; set; }
    #endregion
}
