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
    public bool CriarCampanha(string nome, string descricao, DateTime inicioCampanha, DateTime fimCampanha, double meta, string banner, Usuario usuario, CategoriaCampanha categoria, TipoItem tipo)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pNmCampanha", nome),
            new Parametro ("pDsCampanha", descricao),
            new Parametro ("pDtInicioCampanha",inicioCampanha.ToString("yyyy-MM-dd")),
            new Parametro ("pDtFimEsperada", fimCampanha.ToString("yyyy-MM-dd")),
            new Parametro ("pQtMeta", meta.ToString()),
            new Parametro ("pImgBannerCampanha",banner),
            new Parametro ("pIdUsuario", usuario.Codigo.ToString()),
            new Parametro ("pIdTipoItem", tipo.Codigo.ToString())
        };
        try
        {
            Executar("CriarCampanha", parametros);
            return true;
        }
        catch (Exception)
        {
            return false;
        }
        finally
        {
            Desconectar();
        }
    }
    public bool EncerrarCampanha(int codigo, Usuario usuario)
    {
        List<Parametro> parametros = new List<Parametro>()
        {
            new Parametro ("pIdUsuario", usuario.Codigo.ToString()),
            new Parametro ("pIdCampanha", codigo.ToString()),        };
        try
        {
            Executar("EncerrarCampanha", parametros);
            return true;
        }
        catch (Exception)
        {
            return false;
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
                    Descricao = dados.GetString("ds_campanha");
                    QuantidadeArrecadada = dados.GetDouble("qt_arrecadado");
                    QuantidadeMeta = dados.GetDouble("qt_meta");
                    PorcentagemArrecadado = dados.GetDouble("perc");
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

    #endregion
}
