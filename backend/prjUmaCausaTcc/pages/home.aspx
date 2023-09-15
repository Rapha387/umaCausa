<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="prjUmaCausaTcc.pages.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./../css/index.css" />
    <link rel="stylesheet" href="./../css/home.css" />
    <title>UmaCausa - Home</title>
</head>
<body>
    <form id="form1" runat="server">

        <header>
            <nav>
              <a href="./index.html"><img src="./../images/logo/logo.png" alt="" /></a>
              <asp:Literal ID="litHeader" runat="server"></asp:Literal>
            </nav>
          </header>
          <div class="carrossel">
            <div class="slides">

              <input type="radio" name="slide" id="slide1" checked="checked" />
              <input type="radio" name="slide" id="slide2" />
              <input type="radio" name="slide" id="slide3" />

              <div class="slide s1"></div>
              <div class="slide s2"></div>
              <div class="slide s3"></div>

              <div class="indicadores">
                <label for="slide1" class="indicador ativo"></label>
                <label for="slide2" class="indicador"></label>
                <label for="slide3" class="indicador"></label>
              </div>
            </div>
          </div>
          <main>
            <div class="apresentacao">
              <div class="foto"></div>
              <!--<img src="" class="foto" alt="fotoApresentacao">-->
              <div class="explicacao">
                <h1>Por que doar para <img src="./../images/logo/logo.png" alt="logo" /></h1>
                <p>
                  Doar é fundamental porque permite ajudar aqueles que estão em situação de vulnerabilidade, 
                  contribuindo para a equidade social. Além disso, promove a solidariedade e a empatia entre as pessoas. 
                  A doação também desempenha um papel importante na promoção de mudanças positivas e na construção de um mundo mais justo. 
                  Ao doar, temos a oportunidade de fazer a diferença na vida de alguém e gerar impacto positivo em nossa sociedade.
                </p>
              </div>
            </div>
            
            <div class="campanhas swiper" id="ongs">
              <h2>ONGS PRÓXIMAS DE VOCÊ</h2>
              <div class="campanhas-flex swiper-wrapper">
                <asp:Literal ID="litOngsProximas" runat="server"></asp:Literal>
              </div>
              <div class="botoes-carrossel">
                <button class="voltar swiper-button-prev"><img src="./../images/botoes/seta.png" alt="botao voltar" /></button>
                <button class="avancar swiper-button-next"><img src="./../images/botoes/seta.png" alt="botao avançar" /></button>
              </div>
            </div>
            <div class="campanhas swiper" id="campanhasAcabando">
              <h2>CAMPANHAS PERTO DE ACABAR</h2>
              <div class="campanhas-flex swiper-wrapper">
                  <asp:Localize ID="litCampanhasPertoAcabar" runat="server"></asp:Localize>
              </div>
              <div class="botoes-carrossel">
                <button class="voltar swiper-button-prev"><img src="./../images/botoes/seta.png" alt="botao voltar"/></button>
                <button class="avancar swiper-button-next"><img src="./../images/botoes/seta.png" alt="botao avançar"/></button>
              </div>
            </div>
            <div class="campanhas swiper" id="ongs">
              <h2>ONGS</h2>
              <div class="campanhas-flex swiper-wrapper">
                  <asp:Literal ID="litOngsAleatorias" runat="server"></asp:Literal>
              </div>
              <div class="botoes-carrossel">
                <button class="voltar swiper-button-prev"><img src="./../images/botoes/seta.png" alt="botao voltar"/></button>
                <button class="avancar swiper-button-next"><img src="./../images/botoes/seta.png" alt="botao avançar"/></button>
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
          <script src="./../js/home.js"></script>
    </form>
</body>
</html>
