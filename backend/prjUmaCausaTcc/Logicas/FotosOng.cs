using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class FotosOng : Banco
{
    public List<FotoOng> ListarFotosOng(int codigo)
    {
        List<FotoOng> fotoOngs = new List<FotoOng>();
        try
        {
            List<Parametro> parametros = new List<Parametro>()
    {
        new Parametro("pCodigo",codigo.ToString()),
    };
            MySqlDataReader dados = Consultar("ListarFotosOng", parametros);
            if (dados.HasRows)
            {
                while (dados.Read())
                {
                    fotoOngs.Add(new FotoOng()
                    {
                        Codigo = dados.GetInt32("id_fotoOng"),
                        Foto = dados.GetString("nm_refFoto")
                    });
                }
            }
            if (!dados.IsClosed)
                dados.Close();
        }
        catch (Exception)
        {

            throw new Exception("Houve um erro ao listar as fotos da Ong");
        }
        finally { Desconectar(); }

        return fotoOngs;
    }
}
