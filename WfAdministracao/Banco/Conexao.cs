﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;

public static class Conexao
{
    public static string getConexao()
    {
       return "SERVER=localhost;UID=root;PASSWORD=root;DATABASE=umacausa";
    }
}
