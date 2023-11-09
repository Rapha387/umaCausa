using Org.BouncyCastle.Crypto.Engines;
using prjUmaCausaTcc.pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Runtime.ConstrainedExecution;
using System.Security.Cryptography;
using System.Web;
using System.Web.Management;

public class Campanha : Banco
{
    #region Propriedades
    public int Codigo { get; set; }

    private string _nome;
    public string Nome
    {
        get => _nome;
        set
        {
            if (String.IsNullOrEmpty(_nome))
                _nome = value;
        }
    }

    private string _descricao;
    public string Descricao
    {
        get => _descricao;
        set
        {
            if (String.IsNullOrEmpty(_descricao))
                _descricao = value;
        }
    }

    private DateTime _dataInicio;
    public DateTime DataInicio
    {
        get => _dataInicio;
        set { _dataInicio = value; }
    }

    private string _dataPrevistaFim;
    public string DataPrevistaFim
    {
        get => _dataPrevistaFim;
        set { _dataPrevistaFim = value; }
    }

    private DateTime _dataFim;
    public DateTime DataFim
    {
        get => _dataFim;
        set
        {
            _dataFim = value;
        }
    }

    public double QuantidadeMeta { get; set; }

    public double QuantidadeArrecadada { get; set; }

    public double PorcentagemArrecadado { get; set; }

    private string _banner;
    public string Banner
    {
        get => _banner;
        set
        {
            if (String.IsNullOrEmpty(_banner))
                _banner = value;
        }
    }

    private int _quantidadeDenuncias;
    public int QuantidadeDenuncias
    {
        get => _quantidadeDenuncias;
        set { _quantidadeDenuncias = value; }
    }

    public Usuario ONG { get; set; }
    public TipoItem TipoItemArrecadado { get; set; }
    #endregion

    #region Metodos
    public void CriarCampanha(string nome, string descricao, DateTime fimCampanha, double meta, string banner, Usuario usuario, int tipo)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pNmCampanha", nome),
            new Parametro ("pDsCampanha", descricao),
            new Parametro ("pDtFimEsperada", fimCampanha.ToString("yyyy-MM-dd")),
            new Parametro ("pQtMeta", meta.ToString()),
            new Parametro ("pImgBannerCampanha",banner),
            new Parametro ("pIdUsuario", usuario.Codigo.ToString()),
            new Parametro ("pIdTipoItem", tipo.ToString())
        };
        try
        {
            Consultar("CriarCampanha", parametros);
        }
        catch (Exception)
        {
            throw new Exception("Erro ao criar a campanha!");
        }
        finally
        {
            Desconectar();
        }
    }
    public void EncerrarCampanha(int codigo)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdCampanha", codigo.ToString()),        
        };
        try
        {
            Conectar();
            Executar("EncerrarCampanha", parametros);
        }
        catch (Exception)
        {
            throw new Exception("Erro ao encerrar a campanha!");
        }
        finally
        {
            Desconectar();
        }
    }
    public void BuscarCampanha(int codigo)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdCampanha", codigo.ToString())
        };

        try
        {
            var dados = Consultar("BuscarCampanha", parametros);
            if (dados.HasRows)
            {
                if (dados.Read())
                {
                    Codigo = codigo;
                    Nome = dados.GetString("nm_campanha");
                    Banner = dados.GetString("img_bannerCampanha");
                    DataPrevistaFim = dados.GetMySqlDateTime("dt_fimEsperado").ToString();
                    Descricao = dados.GetString("ds_campanha");
                    QuantidadeArrecadada = dados.GetDouble("qt_arrecadado");
                    QuantidadeMeta = dados.GetDouble("qt_meta");
                    PorcentagemArrecadado = dados.GetDouble("perc");
                    object dt_fimCampanhaValue = dados["dt_fimCampanha"];
                    if (dt_fimCampanhaValue != DBNull.Value && dt_fimCampanhaValue != null)
                    {
                        DataFim = DateTime.ParseExact(dados.GetMySqlDateTime("dt_fimCampanha").ToString(), "MM/dd/yyyy HH:mm:ss", null);
                    }
                    
                    TipoItemArrecadado = new TipoItem() { Codigo = dados.GetInt32("id_tipoItem"), Nome = dados.GetString("nm_tipoItem") };
                    ONG = new Usuario() {
                        Codigo = dados.GetInt32("id_usuario"),
                        Nome = dados.GetString("nm_usuario"),
                    };
                }
            }

            if (!dados.IsClosed)
                dados.Close();
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            Desconectar();
        }

    }
    public void BuscarUltimaCampanhaAdcionada()
    {
        try
        {
            var dados = Consultar("BuscarUltimaCampanhaAdcionada", null);
            if (dados.HasRows)
            {
                if (dados.Read())
                {
                    Codigo = dados.GetInt32("id_campanha");
                }
            }

            if (!dados.IsClosed)
                dados.Close();
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            Desconectar();
        }

    }
    public void AdicionarBannerCampanha(int codigo, string banner)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pBanner", banner),
            new Parametro ("pCodigo", codigo.ToString()),
        };
        try
        {
            Conectar();
            Executar("AdcionarBannerCampanha", parametros);
        }
        catch (Exception)
        {
            throw new Exception("Erro ao Adicionar o Banner a campanha!");
        }
        finally
        {
            Desconectar();
        }
    }
    public Usuario BuscarDadosPixOngCampanha(int codigoCampanha)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdCampanha", codigoCampanha.ToString())
        };

        Usuario ong = new Usuario();

        try
        {
            var dados = Consultar("BuscarDadosPixOngCampanha", parametros);
            if (dados.HasRows)
            {
                if (dados.Read())
                {
                    ong.NumeroPix = dados["nm_pix"].ToString();
                    ong.Nome = dados["nm_usuario"].ToString();
                    ong.Cidade = dados["nm_cidade"].ToString();
                }
            }

            if (!dados.IsClosed)
                dados.Close();
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            Desconectar();
        }

        return ong;
    }
    public void EditarCampanha(int codigo, string nome, string descricao, double meta, DateTime dataFim )
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pCodigo", codigo.ToString()),
            new Parametro ("pNome", nome),
            new Parametro ("pDescricao", descricao),
            new Parametro ("pMeta", meta.ToString()),
            new Parametro ("pDataFim", dataFim.ToString("yyyy-MM-dd"))
        };
        try
        {
            Conectar();
            Executar("EditarCampanha", parametros);
        }
        catch (Exception)
        {
            throw new Exception($"Houve um erro ao editar a campanha {nome}");
        }
        finally
        {
            Desconectar();
        }
    }

    public int BuscarCodigoOngDaCampanha(int codigoCampanha)
    {
        int codigo = 0;

        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdCampanha", codigoCampanha.ToString())
        };

        try
        {
            var dados = Consultar("BuscarCodigoOngDaCampanha", parametros);
            if (dados.HasRows)
            {
                if (dados.Read())
                {
                    codigo = int.Parse(dados["id_usuario"].ToString());
                }
            }

            if (!dados.IsClosed)
                dados.Close();
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            Desconectar();
        }

        return codigo;
    }
    #endregion
}
