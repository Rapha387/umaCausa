<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ong.aspx.cs" Inherits="prjUmaCausaTcc.pages.ong" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css">
  <link rel="stylesheet" href="./../css/index.css">
  <link rel="stylesheet" href="./../css/ong.css">
  <title><asp:Literal ID="litNomeNavegador" runat="server"></asp:Literal></title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
    <nav>
      <a href="./index.html"><img src="./../images/logo/logo.png" alt=""></a>
      <ul>
        <li><a href="./ongs.html">Ongs</a></li>
        <li><a href="./campanhas.html">Campanhas</a></li>
        <li><a href="./login.html">Login</a></li>
        <li><a href="./cadastro.html"><button><img src="./../images/icons/user.png" />Cadastre-se</button></a></li>
      </ul>
    </nav>
  </header>
  
  <div class="banner"></div>
  
  <div class="bloqueio escondido"></div>

  <div class="caixa-flutuante popup-doacao escondido" id="popupPrincipal">
    <img class="botao-fechar" src="./../images/icons/btnFechar.png" alt="botao de fechar">
    <h2>ESCOLHER DOAÇÂO</h2>
    <div class="escolher-doacao">
      <div class="tipo-doacao" id="btnDoarMonetario">
        <img src="./../images/tipoDoacao/doacao-monetaria.png" alt="">
        <h3>Doação monetária</h3>
      </div>
      <div class="ou">
        <span>ou</span>
      </div>
      <div class="tipo-doacao" id="btnDoarItem">
        <img src="./../images/tipoDoacao/doacao-item.png" alt="">
        <h3>Doação de Item</h3>
      </div>
    </div>
  </div>

  <div class="caixa-flutuante popup-doacao-monetaria escondido">
    <img class="botao-voltar" src="./../images/icons/btnVoltar.png" alt="">
    <div class="monetaria-flex">
      <div class="infos-doacao">
        <label for="txtValor">Valor:</label>
        <input type="number" placeholder="10,00" id="txtValor">
        <button id="btnGerarPix">Gerar QRCODE</button>
        <label for="txtValor">Comprovante:</label>
        <input type="file">
      </div>

      <div class="espacamento"></div>
      
      <div class="qrcode" id="qrcode">
      </div>
    </div>

    <div class="botao-finalizar-doacao">
      <button>Finalizar Doação</button>
    </div>
  </div>

  <div class="caixa-flutuante popup-doacao-item escondido">
    <img class="botao-voltar" src="./../images/icons/btnVoltar.png" alt="">
    <div class="infos-doacao">
      <div class="input-label">
        <label for="txtNomeItem">Nome:</label>
        <input type="text" id="txtNomeItem" placeholder="Nome do item">
      </div>
      <div class="input-label">
        <label for="txtQuantidadeItem">Quantidade:</label>
        <input type="number" id="txtQuantidadeItem" placeholder="2">
      </div>
      <div class="input-label">
        <label for="cmbTipoEntrega">Tipo da Entrega:</label>
        <select name="cmbTipoEntrega" id="cmbTipoEntrega">
          <option value="">Levar Item ao Local</option>
        </select>
      </div>
      <div class="input-label">
        <label for="dtEnvio">Data de Envio:</label>
        <input type="date" name="dtEnvio" id="txtData">
      </div>
      <button>Agendar Envio</button>
    </div>
  </div>


  <div class="caixa-flutuante denuncia escondido">
    <img class="botao-fechar" src="./../images/icons/btnFechar.png" alt="botao de fechar">
    <div class="denuncia-flex">
      <h1>qual o motivo da denúncia?</h1>
      <select name="motivoDenuncia" id="aa">
        <option>Selecione o motivo</option>
      </select>
      <label for="observacao">Observacao:</label>
      <textarea name="observacao" id="txtObservao" cols="30" rows="5"></textarea>
      <button>Denunciar</button>
    </div>
  </div>

  <div class="caixa-flutuante popup-compartilhar escondido">
    <img class="botao-fechar" src="./../images/icons/btnFechar.png" alt="botao de fechar">
    <label for="compartilhar">Compartilhar:</label><br>
    <div class="compartilhar-flex">
      <input type="text" name="compartilhar" id="inputCompartilhar" value="umacausa.com.br/ong/vivabichos" disabled>
      <button id="btnCopiar"><img src="./../images/icons/copiar.png" alt=""></button>
    </div>
  </div>

  <main>
    <div class="logo-nome"> 
      <div class="logo-ong"></div>
      <h1><asp:Literal ID="litNome" runat="server"></asp:Literal> <img src="./../images/categorias/categoria1.png" alt="" class="img-categoria-ong"></h1>
    </div>

    <div class="infos">
      <div class="infos1">
        <div class="sobre-nos">
          <h3>SOBRE NÓS</h3>
          <div class="descricao">
            <asp:Literal ID="litDescricao" runat="server"></asp:Literal>
          </div>
        </div>

        <div class="campanhas swiper" id="campanhasAtuais">
          <h2>CAMPANHAS</h2>
          <div class="campanhas-flex swiper-wrapper">
              <asp:Literal ID="litCampanhasAtivas" runat="server"></asp:Literal>
          </div>
          <div class="botoes-carrossel">
            <button class="voltar swiper-button-prev"><img src="./../images/botoes/seta.png" alt="botao voltar"></button>
            <button class="avancar swiper-button-next"><img src="./../images/botoes/seta.png" alt="botao avançar"></button>
          </div>
        </div>
        <div class="campanhas swiper" id="campanhasAtuais">
          <h2>CAMPANHAS INATIVAS</h2>
          <div class="campanhas-flex swiper-wrapper">
              <asp:Literal ID="litCampanhasInativas" runat="server"></asp:Literal>
            <%--<div class="campanha swiper-slide">
              <a href="">
                <div class="imagem-campanha"></div>
                <div class="sobre-campanha">
                  <div class="nome-campanha">
                    Evento De Doação de Ca...
                  </div>
                  <div class="progresso">
                    <div class="barra-progresso">
                      <div class="quantidade-progresso"></div>
                    </div>
                    <div class="porcentagem">15%</div>
                  </div>
                </div>
              </a>
            </div>--%>
            
          </div>
          <div class="botoes-carrossel">
            <button class="voltar swiper-button-prev"><img src="./../images/botoes/seta.png" alt="botao voltar"></button>
            <button class="avancar swiper-button-next"><img src="./../images/botoes/seta.png" alt="botao avançar"></button>
          </div>
        </div>
      </div>
      <div class="infos2">
        <button class="doar" id="btnDoar">
          <%--<img src="./../images/icons/search.png" alt="DOAR">--%>
          <div>DOAR</div>
        </button>

        <div class="card-infos">
          <div class="card">
            <img src="./../images/icons/endereco.png" alt="icone endereco">
            <p><asp:Literal ID="litEndereco" runat="server"></asp:Literal></p>
          </div>
          <div class="card">
            <img src="./../images/icons/email.png" alt="icone email">
            <p><asp:Literal ID="litEmailContato" runat="server"></asp:Literal></p>
          </div>
          <div class="card">
            <img src="./../images/icons/telefone.png" alt="icone telefone">
            <p><asp:Literal ID="litTelefone" runat="server"></asp:Literal></p>
          </div>
          <div class="card">
            <img src="./../images/icons/website.png" alt="icone website">
            <p><asp:Literal ID="litSite" runat="server"></asp:Literal></p>
          </div>
          <div class="card">
            <img src="./../images/icons/cnpj.png" alt="icone cnpj">
            <p><asp:Literal ID="litCNPJ" runat="server"></asp:Literal></p>
          </div>
          <div class="card">
            <div>
              <h3>CATEGORIA</h3>
              <asp:Literal ID="litCampanha" runat="server"></asp:Literal>
            </div>
          </div>
        </div>

        
        <div class="fotos">
          <h2>
            fotos
          </h2>
          <div class="fotos-flex">
            <img src="./../images/fotosOng/foto1.png" alt="" class="foto">
            <img src="./../images/fotosOng/foto1.png" alt="" class="foto">
            <img src="./../images/fotosOng/foto1.png" alt="" class="foto">
            <img src="./../images/fotosOng/foto1.png" alt="" class="foto">
            <img src="./../images/fotosOng/foto1.png" alt="" class="foto">
            <img src="./../images/fotosOng/foto1.png" alt="" class="foto">
          </div>
        </div>


        <div class="denunciar-compartilhar">
          <div class="compartilhar" id="btnCompartilhar">
            <img src="./../images/icons/compartilhar.png" alt="icon compartilhar">
            <div>Compartilhar</div>
          </div>
          <div class="denunciar" id="btnDenunciar">
            <img src="./../images/icons/denunciar.png" alt="icon denunciar">
            <div>Denunciar</div>
          </div>
        </div>

      </div>
    </div>

  </main>

  <footer>
    <nav>
      <a href="./index.html"><img src="./../images/logo/logoBranca.png" alt="logo umaCausa" /></a>
      <div>
        <h3>Inicio</h3>
        <p><a href="./index.html">Home</a></p>
        <p><a href="./campanhas.html">Campanhas</a></p>
        <p><a href="./ongs.html">ONGs</a></p>
      </div>
      <div>
        <h3>Sobre Nós</h3>
        <p><a href="./sobre.html">Sobre</a></p>
        <p><a href="./nossaEquipe.html">Nossa Equipe</a></p>
      </div>
      <div>
        <h3>Suporte</h3>
        <p><a href="./faq.html">FAQ</a></p>
      </div>
    </nav>
  </footer>

  <script src="./../swiper/swiper-bundle.min.js"></script>
  <script src="./../js/carrossel-itens.js"></script>
  <script src="./../js/popup.js"></script>
  <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>
  <script src="./../js/pix.js"></script>
  <script src="./../js/gerarPix.js"></script>
  </form>
</body>
</html>