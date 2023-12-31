﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="minhasCampanhas.aspx.cs" Inherits="prjUmaCausaTcc.pages.configuracoes.minhasCampanhas" %>

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
    <title>UmaCausa - Minhas Campanhas</title>
  </head>
  <body>
      <form id="form1" runat="server">

            <asp:Literal ID="LitHeader" runat="server"></asp:Literal>

            
            <div class="bloqueio escondido"></div>

            <div class="caixa-flutuante popup-confirmacao escondido">
                <p id="textoConfirmacao" class="textoPopupResposta">Tem que deseja encerrar essa campanha?</p>
                <div class="botoes-confirmacao">
                    <div class="botao-confirmacao" onclick="encerrarCampanha(this)" id="btnAceitarConfirmacao">Sim</div>
                    <div class="botao-confirmacao" onclick="esconderPopupConfirmacao()" id="btnRecusarConfirmacao">Não</div>
                </div>
            </div>

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
                  <a class="botao-criar-campanha" href="./../criarCampanha.aspx"><div>Criar Nova Campanha</div></a>

                  <div class="container-tabela">
                      <asp:Panel ID="pnlCampanhas" Width="100%" runat="server">
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
                      </asp:Panel>

                      <asp:Literal ID="litErro" runat="server"></asp:Literal>

                  </div>               
                </div>
              </div>
            </main>

            <footer>
                <asp:Literal ID="LitFooter" runat="server"></asp:Literal>
            </footer>

            <script src="./../../js/popup.js"></script>
            <script src="./../../js/EncerrarCampanha.js"></script>
            <script src="./../../js/animarBtnHeader.js"></script>
            <script src="./../../js/DeslogarUsuario.js"></script>
       </form>
  </body>
</html>
