<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmacoesDoacoes.aspx.cs" Inherits="prjUmaCausaTcc.pages.configuracoes.confirmacoesDoacoes" %>

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
      href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@300;500;900&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./../../css/index.css" />
    <link rel="stylesheet" href="./../../css/confirmacoesDoacoes.css" />
    <title>UmaCausa - Meu Perfil</title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:Literal ID="Navegacao" runat="server"></asp:Literal>
      <%--<nav>
        <a href="./../index.html"
          ><img class="logo-header" src="./../images/logo/logoAzul.svg" alt=""></a>
        <ul>
          <li><a href="./../ongs.html">Ongs</a></li>
          <li><a href="./../campanhas.html">Campanhas</a></li>
          <li><a href="./../login.html">Login</a></li>
          <li>
            <a href="./../cadastro.html"
              ><button>
                <img src="./../../images/icons/user.png" />Cadastre-se
              </button></a
            >
          </li>
        </ul>
      </nav>--%>
    </header>

    <main>
        <asp:Literal ID="Menu" runat="server"></asp:Literal>
     <%-- <nav>
        <ul>
          <li>
            <a href="./meuPerfil.html">
              <img src="./../../images/icons/userAzul.png" alt="" />
              Meu Perfil
            </a>
          </li>
          <li>
            <a href="./minhasColaboracoes.html">
              <img src="./../../images/icons/maos.png" alt="" />
              Minhas Colaborações
            </a>
          </li>
          <li>
            <a href="./meusItens.html">
              <img src="./../../images/icons/caixa.png" alt="" />
              Meus Itens
            </a>
          </li>
          <li>
            <a href="./confirmacoesDoacoes.html">
              <img src="./../../images/icons/confirmacao.png" alt="" />
              Confirmações de Doações
            </a>
          </li>
          <li>
            <a href="./minhasCampanhas.html">
              <img src="./../../images/icons/megafone.png" alt="" />
              Minhas Campanhas
            </a>
          </li>
          <li>
            <a href="./alterarSenha.html">
              <img src="./../../images/icons/cadeado.png" alt="" />
              Alterar Senha
            </a>
          </li>
        </ul>
      </nav>--%>
      <hr />
      <div class="infos-configuracoes">
        <div class="infos">
          <div class="filtro-confirmacoes">
           <a href="confirmacoesDoacoes.aspx"><div class="filtros">
              <img src="./../../images/icons/confirmacao.png" alt="" />Doações à
              confirmar
            </div></a>
            <a href="confirmacoesDoacoes.aspx?pagina=1"><div class="filtros">
              <img src="./../../images/icons/confirmacao.png" alt="" />Doações
              já confirmadas
            </div></a>
          </div>
                <div class="confirmacoes">
                    <asp:Literal ID="Confirmacoes" runat="server" ></asp:Literal>
         
                    <%--<div class="confirmacao">
                          <div class="infos-confirmacao">
                                <p>Doador: Laura Felice Costa Bezerra</p>
                                <p>Valor: R$10,00</p>
                                <p>Data: dd/mm/aa - Horário: HH:mm</p>
                          </div>
                          <div class="botoes-confirmacao">
                                <img src="./../../images/icons/confirmado.png" alt="">        
                              <asp:ImageButton ID="ImgBtnConfirmar" runat="server" src="./../../images/icons/confirmado.png" OnClick="ImgBtnConfirmar_Click"/>              
                                <img src="./../../images/icons/recusar.png" alt="">              
                              <asp:ImageButton ID="ImgBtnRecusar" runat="server" src="./../../images/icons/recusar.png" OnClick="ImgBtnRecusar_Click"/>
                          </div>
                    </div>--%>
        </div>
      </div>
    </main>

    <footer>
        <asp:Literal ID="Footer" runat="server"></asp:Literal>
      <%--<nav>
        <a href="./../index.html"
          ><img src="./../../images/logo/logoBranca.png" alt="logo umaCausa"
        /></a>
        <div>
          <h3>Inicio</h3>
          <p><a href="./../index.html">Home</a></p>
          <p><a href="./../campanhas.html">Campanhas</a></p>
          <p><a href="./../ongs.html">ONGs</a></p>
        </div>
        <div>
          <h3>Sobre Nós</h3>
          <p><a href="./../sobre.html">Sobre</a></p>
          <p><a href="./../nossaEquipe.html">Nossa Equipe</a></p>
        </div>
        <div>
          <h3>Suporte</h3>
          <p><a href="./../faq.html">FAQ</a></p>
        </div>
      </nav>--%>
    </footer>


    <script src="./../../js/DeslogarUsuario.js"></script>
    <script src="./../../js/inputFile.js"></script>
    <script src="./../../js/cep.js"></script>

    </form>
</body>
</html>
