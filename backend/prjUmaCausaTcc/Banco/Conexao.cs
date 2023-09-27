using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;

public static class Conexao
{
    public static string getConexao()
    {
        //return "SERVER=localhost;UID=root;PASSWORD=root;DATABASE=umacausa";
        //return "SERVER=instanciamigrada.ck88opx2goor.sa-east-1.rds.amazonaws.com;UID=admin;PASSWORD=g7*_jFR^==%NQE!6;DATABASE=umacausa";
        return "SERVER=localhost;UID=root;PASSWORD=root;DATABASE=umacausa";
    }
}
