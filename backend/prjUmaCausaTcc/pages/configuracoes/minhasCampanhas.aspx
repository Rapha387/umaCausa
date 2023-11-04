<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="minhasCampanhas.aspx.cs" Inherits="prjUmaCausaTcc.pages.configuracoes.minhasCampanhas" %>

<!DOCTYPE html>

<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@300;500;900&display=swap"
      rel="stylesheet"
    />
    <link rel="icon" href="./../../images/icone.svg" type="image/x-icon" />
    <link rel="stylesheet" href="./../../css/index.css" />
    <link rel="stylesheet" href="./../../css/minhasCampanhas.css" />
    <title>UmaCausa - Meu Perfil</title>
  </head>
  <body>
      <form id="form1" runat="server">

            <asp:Literal ID="LitHeader" runat="server"></asp:Literal>

            <main>
                <asp:Literal ID="LitMenu" runat="server"></asp:Literal>

              <hr />

              <div class="infos-configuracoes">
                <div class="titulo-info">
                  <img src="./../../images/icons/megafone.png" alt="" />
                  Minhas Campanhas
                </div>
                <div class="infos">
                  <div class="pesquisar">
                      <asp:TextBox ID="TxtPesquisa" TextMode="Search" runat="server" placeholder="Pesquisar..." CssClass="txtBusca"></asp:TextBox>
                      <asp:ImageButton ID="ImgPesquisar" runat="server" ImageUrl="./../../images/icons/search.png" OnClick="ImgPesquisar_Click"/>
                  </div>
                  <a href="./../criarCampanha.html"><button>Criar Nova Campanha</button></a>

                  <div class="container-tabela">
                      <table>
                        <thead>
                          <td>Campanha</td>
                          <td>Quantidade</td>
                          <td>Data de Divulgacao</td>
                          <td>Data de término</td>
                        </thead>
                        <tbody>
                            <asp:Literal ID="LitCampanhas" runat="server"></asp:Literal>
                        </tbody>
                      </table>

                  </div>
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
                <asp:Literal ID="LitFooter" runat="server"></asp:Literal>
            </footer>

            <script src="./../../js/animarBtnHeader.js"></script>
            <script src="./../../js/DeslogarUsuario.js"></script>
       </form>
  </body>
</html>
