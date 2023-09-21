using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class CampanhaODS : Banco
{
    #region Propriedades
    public Campanha Campanha { get; private set; }
    public ODS ODS { get; private set; }
    #endregion
}
