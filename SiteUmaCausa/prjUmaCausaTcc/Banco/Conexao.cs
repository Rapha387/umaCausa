using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;

public static class Conexao
{
    public static string getConexao()
    {
       return "SERVER=127.0.0.1;UID=root;PASSWORD=root;DATABASE=umacausa";
    }
}
