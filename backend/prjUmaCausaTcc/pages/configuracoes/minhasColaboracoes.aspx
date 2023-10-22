﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="minhasColaboracoes.aspx.cs" Inherits="prjUmaCausaTcc.pages.configuracoes.minhasColaboracoes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-br">
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
    <link rel="stylesheet" href="./../../css/minhasColaboracoes.css" />
    <title>UmaCausa - Meu Perfil</title>
</head>
<body>
    <form id="form1" runat="server">
       <header>
           <asp:Literal ID="Navegacao" runat="server"></asp:Literal>
        </header>

        <main>
        <asp:Literal ID="Menu" runat="server"></asp:Literal>   
          <%--<nav>
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
            <div class="titulo-info">
              <img src="./../../images/icons/maos.png" alt="" />
              Minhas Colaborações
            </div>
            <div class="infos">
              <div class="pesquisar">
                  <input id="pesquisa" type="text" placeholder="Pesquisar..."/>
    <%--            <input type="search" placeholder="Pesquisar..." />--%>
                <img src="./../../images/icons/search.png" alt="lupa" />
              </div>
              <table>
                <thead>
                  <td>Nome</td>
                  <td>Tipo</td>
                  <td>Quantidade</td>
                  <td>Data da colaboração</td>
                  <td>Confirmação</td>
                </thead>
                <tbody>
                    <asp:Literal ID="Colaboracoes" runat="server"></asp:Literal> 
                 <%-- <tr>
                    <td>Campanha do Agasalho</td>
                    <td>1</td>
                    <td>14/03/2005</td>
                  </tr>
                  <tr>
                    <td>Campanha do Agasalho</td>
                    <td>1</td>
                    <td>14/03/2023</td>
                  </tr>
                  <tr>
                    <td>Campanha do Agasalho</td>
                    <td>1</td>
                    <td>31/02/2013</td>
                  </tr>
                  <tr>
                    <td>Campanha do Agasalho</td>
                    <td>1</td>
                    <td>29/07/2014</td>
                  </tr>
                  <tr>
                    <td>Campanha do Agasalho</td>
                    <td>1</td>
                    <td>23/10/2023</td>
                  </tr>
                  <tr>
                    <td>Campanha do Agasalho</td>
                    <td>1</td>
                    <td>23/10/2023</td>
                  </tr>
                  <tr>
                    <td>Campanha do Agasalho</td>
                    <td>1</td>
                    <td>23/10/2023</td>
                  </tr>
                  <tr>
                    <td>Campanha do Agasalho</td>
                    <td>1</td>
                    <td>23/10/2023</td>
                  </tr>
                  <tr>
                    <td>Campanha do Agasalho</td>
                    <td>1</td>
                    <td>23/10/2023</td>
                  </tr>
                  <tr>
                    <td>Campanha do Agasalho</td>
                    <td>1</td>
                    <td>23/10/2023</td>
                  </tr>--%>
                </tbody>
              </table>
              <div class="paginacao">
                <div class="paginas">
                  <img
                    class="pagina"
                    src="./../../images/botoes/setaEsquerdaTabela.png"
                    alt="setaEsquerda"
                  />
                  <div class="pagina pagina-selecionada">1</div>
                  <div class="pagina">2</div>
                  <div class="pagina">3</div>
                  <div class="pagina">4</div>
                  <div class="pagina">5</div>
                  <div class="pagina">6</div>
                  <div class="pagina">7</div>
                  <img
                    class="pagina"
                    src="./../../images/botoes/setaDireitraTabela.png"
                    alt="setaDireita"
                  />
                </div>
              </div>
            </div>
          </div>
        </main>

        <footer>
            <asp:Literal ID="Footer" runat="server"></asp:Literal>
         <%-- <nav>
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

    <script src="./../../js/inputFile.js"></script>
    <script src="./../../js/cep.js"></script>
    </form>
</body>
</html>