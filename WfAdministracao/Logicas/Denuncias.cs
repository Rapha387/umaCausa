using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class Denunciado
{
    public int Codigo { get; set; }
    public string Nome { get; set; }
}

public class Denuncias : Banco
{
    public Denunciado Denunciado { get; set; }
    public DateTime DataDenuncia { get; set; }
    public string Descricao { get; set; }
    public TipoMotivoDenuncia Motivo { get; set; }
    public ValorMotivoDenuncia Valor { get; set; }
    public Usuario Denunciante { get; set; }
    public string TipoDenuncia { get; set; }
    public bool Aprovado { get; set; }

    public List<DenunciaCampanha> BuscarDenunciasCampanhas()
    {
        var denunciaCampanhas = new List<DenunciaCampanha>();

        try
        {
            var dados = Consultar("ConsultarDenunciasCampanhas", null);

            if (dados.HasRows)
            {
                while (dados.Read())
                {
                    DenunciaCampanha denuncia = new DenunciaCampanha();
                    Usuario usuario = new Usuario();
                    Campanha campanha = new Campanha();
                    ValorMotivoDenuncia valormotivoDenunciaCampanha = new ValorMotivoDenuncia();
                    TipoMotivoDenuncia tipoDenunciaCampanha = new TipoMotivoDenuncia();
                    usuario.Codigo = dados.GetInt32("id_usuario");
                    usuario.Nome = dados.GetString("nm_usuario");
                    denuncia.Denunciante = usuario;
                    campanha.Codigo = dados.GetInt32("id_campanha");
                    campanha.Nome = dados.GetString("nm_denunciado");
                    denuncia.CampanhaDenunciada = campanha;
                    if (!String.IsNullOrEmpty(dados.GetString("ds_denuncia")))
                        denuncia.Descricao = dados.GetString("ds_denuncia");

                    valormotivoDenunciaCampanha.Codigo = dados.GetInt32("id_motivoValorDenuncia");
                    valormotivoDenunciaCampanha.Nome = dados.GetString("nm_valorMotivoDenuncia");
                    tipoDenunciaCampanha.Codigo = dados.GetInt32("id_motivoDenuncia");
                    tipoDenunciaCampanha.Nome = dados.GetString("nm_motivoDenuncia");

                    denuncia.Valor = valormotivoDenunciaCampanha;
                    denuncia.Motivo = tipoDenunciaCampanha;

                    denuncia.DataDenuncia = dados.GetDateTime("dt_denuncia");

                    try
                    {
                        denuncia.Aprovada = (dados.GetInt16("ic_aprovada") == 1) ? true : false;
                    }
                    catch (Exception)
                    {
                        denuncia.Aprovada = false;
                    }

                    denunciaCampanhas.Add(denuncia);
                }
            }

            if (!dados.IsClosed)
                dados.Close();
        }
        catch (Exception)
        {
            throw new Exception("Ocorreu um problema na busca");
        }
        finally
        {
            Desconectar();
        }

        return denunciaCampanhas;
    }

    public List<DenunciaUsuario> BuscarDenunciasOngs()
    {
        var denuncias = new List<DenunciaUsuario>();

        try
        {
            var dados = Consultar("ConsultarDenunciasUsuarios", null);

            if (dados.HasRows)
            {
                while (dados.Read())
                {
                    DenunciaUsuario denuncia = new DenunciaUsuario();
                    denuncia.Denunciado = new Usuario()
                    {
                        Codigo = dados.GetInt32("id_usuarioDenunciado"),
                        Nome = dados.GetString("nm_denunciado")
                    };
                    denuncia.Denunciante = new Usuario()
                    {
                        Codigo = dados.GetInt32("id_usuarioDenunciante"),
                        Nome = dados.GetString("nm_denunciante")
                    };
                    denuncia.DataDenuncia = dados.GetDateTime("dt_denuncia");
                    if (!String.IsNullOrEmpty(dados.GetString("ds_denuncia")))
                        denuncia.Descricao = dados.GetString("ds_denuncia");

                    try
                    {
                        denuncia.Aprovada = (dados.GetInt16("ic_aprovada") == 1) ? true : false;
                    }
                    catch (Exception)
                    {
                        denuncia.Aprovada = false;
                    }

                    denuncia.Motivo = new MotivoDenunciaUsuario()
                    {
                        Codigo = dados.GetInt32("id_motivoDenuncia"),
                        Nome = dados.GetString("nm_motivoDenuncia"),
                    };
                    
                    denuncia.Motivo.ValorMotivoDenuncia = new ValorMotivoDenuncia()
                    {
                        Codigo = dados.GetInt32("id_motivoValorDenuncia"),
                        Nome = dados.GetString("nm_valorMotivoDenuncia")
                    };

                    denuncias.Add(denuncia);
                }
            }

            if (!dados.IsClosed)
                dados.Close();
        }
        catch (Exception)
        {
            throw new Exception("Ocorreu um problema na busca");
        }
        finally
        {
            Desconectar();
        }

        return denuncias;
    }

    public List<Denuncias> BuscarDenunciasPendentes()
    {
        List<DenunciaUsuario> denunciaUsuarios = BuscarDenunciasOngs();

        List<DenunciaCampanha> denunciaCampanhas = BuscarDenunciasCampanhas();

        List<Denuncias> denuncias = new List<Denuncias>();

        foreach (DenunciaUsuario denuncia in denunciaUsuarios)
        {
            Denuncias denunciasGenerica = new Denuncias()
            {
                Valor = denuncia.Motivo.ValorMotivoDenuncia,
                Motivo = new TipoMotivoDenuncia()
                {
                    Nome = denuncia.Motivo.Nome,
                    Codigo = denuncia.Motivo.Codigo,
                },
                DataDenuncia = denuncia.DataDenuncia,
                Denunciante = denuncia.Denunciante,
                Denunciado = new Denunciado()
                {
                    Nome = denuncia.Denunciado.Nome,
                    Codigo = denuncia.Denunciado.Codigo
                },
                Aprovado = denuncia.Aprovada,
                Descricao = denuncia.Descricao,
                TipoDenuncia = "du",
            };
            if (!denunciasGenerica.Aprovado)
                denuncias.Add(denunciasGenerica);
        }

        foreach (DenunciaCampanha denuncia in denunciaCampanhas)
        {
            Denuncias denunciasGenerica = new Denuncias()
            {
                Valor = denuncia.Valor,
                Motivo = denuncia.Motivo,
                DataDenuncia = denuncia.DataDenuncia,
                Denunciante = denuncia.Denunciante,
                Denunciado = new Denunciado()
                {
                    Nome = denuncia.CampanhaDenunciada.Nome,
                    Codigo = denuncia.CampanhaDenunciada.Codigo
                },
                Aprovado = denuncia.Aprovada,
                Descricao = denuncia.Descricao,
                TipoDenuncia = "dc",
            };
            if (!denunciasGenerica.Aprovado)
                denuncias.Add(denunciasGenerica);
        }
        var listarDoacoesOrdernada = denuncias.OrderByDescending(item => item.DataDenuncia).ToList();
        return denuncias;
    }
}


