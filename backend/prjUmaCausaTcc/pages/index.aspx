<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="prjUmaCausaTcc.pages.home" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="icon" href="./../images/icone.svg" type="image/x-icon" />
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
              <img class="foto" src="./../images/home/pqdoar.svg" alt="fotoApresentacao" />
              <div class="explicacao">
                <h1>Por que doar para <img src="./../images/logo/logoAzul.svg" alt="logo" /></h1>
                <p>
                  Doar é fundamental porque permite ajudar aqueles que estão em situação de vulnerabilidade, 
                  contribuindo para a equidade social. Além disso, promove a solidariedade e a empatia entre as pessoas. 
                  A doação também desempenha um papel importante na promoção de mudanças positivas e na construção de um mundo mais justo. 
                  Ao doar, temos a oportunidade de fazer a diferença na vida de alguém e gerar impacto positivo em nossa sociedade.
                </p>
              </div>
            </div>
            <asp:Panel ID="pnlOngsProximas" Visible="false" runat="server">
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
            </asp:Panel>
            <asp:Panel ID="pnlCampanhasAcabando" Visible="false" runat="server">
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
            </asp:Panel>
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
            <div class="campanhas swiper" id="campanhasAcabando">
                <h2>CAMPANHAS</h2>
                <div class="campanhas-flex swiper-wrapper">
                    <asp:Localize ID="litCampanhasAleatorias" runat="server"></asp:Localize>
                </div>
                <div class="botoes-carrossel">
                    <button class="voltar swiper-button-prev"><img src="./../images/botoes/seta.png" alt="botao voltar"/></button>
                    <button class="avancar swiper-button-next"><img src="./../images/botoes/seta.png" alt="botao avançar"/></button>
                </div>
            </div>
          </main>

          <footer>
              <asp:Literal ID="litFooter" runat="server"></asp:Literal>
          </footer>

          <script src="../js/DeslogarUsuario.js"></script>
          <script src="./../js/home.js"></script>
          <script src="./../swiper/swiper-bundle.min.js"></script>
          <script src="./../js/carrossel-itens.js"></script>
          <script src="../js/alteracaoCoresBarraPorcentagem.js"></script>
    </form>
</body>
</html>
