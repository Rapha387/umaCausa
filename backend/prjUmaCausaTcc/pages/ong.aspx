﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ong.aspx.cs" Inherits="prjUmaCausaTcc.pages.ong" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" href="./../images/icone.svg" type="image/x-icon" />
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
        <asp:Literal ID="litHeader" runat="server"></asp:Literal>
  
        <asp:Literal ID="litBanner" runat="server"></asp:Literal>
  
      <div class="bloqueio escondido"></div>

      <div class="caixa-flutuante popup-sucesso escondido">
        <img src="./../images/popupsResposta/sucesso.png"/>
        <p class="textoPopupResposta">Doação Realizada com sucesso</p>
        <div class="btnFecharPopUpResposta">Continuar</div>
      </div>

      <div class="caixa-flutuante popup-erro escondido">
        <img src="./../images/popupsResposta/erro.png"/>
        <p class="textoPopupResposta">Não foi possível realizar a doação. Por favor tente novamente mais tarde.</p>
        <div class="btnFecharPopUpResposta">Voltar</div>
      </div>

      <div class="caixa-flutuante popup-doacao escondido" id="popupPrincipal">
        <img class="botao-fechar" src="./../images/icons/btnFechar.png" alt="botao de fechar">
        <h2>ESCOLHER DOAÇÃO</h2>
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
            <label for="txtComprovante">Comprovante:</label>
            <label class="custom-file-upload">
                <input type="file" id="txtComprovante" accept="image/*">
                <span class="textoInputFile">Anexar Comprovante</span>
            </label>
            <span id="spanComprovante">Nenhum Comprovante Anexado</span>
          </div>

          <div class="espacamento"></div>
          <div class="containerQrCode">
              <div class="qrcode" id="qrcode"></div>
              <button id="btnCopiarPix"><img src="./../images/icons/copiar.png" alt="">Copiar Código Pix</button>
              <input type="text" id="txtPix" class="escondido" />
          </div>

        </div>
        <span id="erroDoacaoMonetaria" class="spanErro"></span>
        <div class="botao-finalizar-doacao">
          <button id="btnRelizarDoacaoMonetaria">Finalizar Doação</button>
        </div>
      </div>

      <div class="caixa-flutuante popup-doacao-item escondido">
        <img class="botao-voltar" src="./../images/icons/btnVoltar.png" alt="">
        <div class="infos-doacao">
          <div class="input-label">
            <label for="cmbTipoItem">Tipo do Item:</label>
            <asp:DropDownList ID="cmbTipoItem" runat="server">
                <asp:ListItem>Selecione o tipo do Item</asp:ListItem>
            </asp:DropDownList>
            <span id="erroTipoItem" class="spanErro"></span>
          </div>
          <div class="input-label">
            <label for="txtNomeItem">Nome:</label>
            <input type="text" id="txtNomeItem" placeholder="Nome do item">
            <span id="erroNomeItem" class="spanErro"></span>
          </div>
          <div class="input-label">
            <label for="txtQuantidadeItem">Quantidade:</label>
            <input type="number" id="txtQuantidadeItem" placeholder="2">
            <span id="erroQuantidadeItem" class="spanErro"></span>
          </div>
          <div class="input-label">
            <label for="cmbTipoEntrega">Tipo da Entrega:</label>
              <asp:DropDownList ID="cmbTipoEntrega" runat="server"></asp:DropDownList>
            <span id="erroTipoEntrega" class="spanErro"></span>
          </div>
          <div class="input-label">
            <label for="txtDataEnvio">Data de Envio:</label>
            <input type="date" name="txtDataEnvio" id="txtDataEnvio" min="now" max="2023-12-31">
            <span id="erroDataEnvio" class="spanErro"></span>
          </div>
          <div class="input-label">
            <label for="txtHorario">Horário:</label>
            <input type="time" name="txtHorario" id="txtHorario"  min="08:00" max="18:00">
             <span id="erroHorario" class="spanErro"></span>
          </div>
          <button id="btnAgendarItem">Agendar Doação</button>
        </div>
      </div>

      <div class="caixa-flutuante denuncia escondido">
        <img class="botao-fechar" src="./../images/icons/btnFechar.png" alt="botao de fechar">
        <div class="denuncia-flex">
          <h1>qual o motivo da denúncia?</h1>
          <asp:DropDownList ID="cmbMotivoDenuncia" runat="server"> </asp:DropDownList>
          <label for="observacao">Observacao:</label>
          <textarea name="observacao" id="txtObservao" cols="30" rows="5"></textarea>
          <span id="erroDenuncia" class="spanErro" style="text-align: center"></span>
          <button id="btnRealizarDenunciaUsuario">Denunciar</button>
        </div>
      </div>

      <div class="caixa-flutuante popup-compartilhar escondido">
        <img class="botao-fechar" src="./../images/icons/btnFechar.png" alt="botao de fechar">
        <label for="compartilhar">Compartilhar:</label><br>
        <div class="compartilhar-flex">
          <input type="text" name="compartilhar" id="inputCompartilhar" value="umacausa.com.br/ong/vivabichos" readonly="readonly">
          <button id="btnCopiar"><img src="./../images/icons/copiar.png" alt=""></button>
        </div>
      </div>

      <main>
        <div class="logo-nome"> 
         <asp:Literal ID="litIcone" runat="server"></asp:Literal>
          <h1><asp:Literal ID="litNome" runat="server"></asp:Literal> <%--<img src="./../images/categorias/categoria1.png" alt="" class="img-categoria-ong">--%></h1>
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
                <img src="./../images/icons/telefone.png" alt="icone telefone" style="height: 30px;" />
                <p><asp:Literal ID="litTelefone" runat="server"></asp:Literal></p>
              </div>
              <asp:Panel ID="pnlCardWebSite" runat="server" Visible="true">
                  <div class="card">
                    <img src="./../images/icons/website.png" alt="icone website">
                    <p><asp:Literal ID="litSite" runat="server"></asp:Literal></p>
                 </div>
              </asp:Panel>
              
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
              
            <asp:Literal ID="litInicioFotos" runat="server"></asp:Literal>
            <asp:Literal ID="litFotos" runat="server"></asp:Literal>
            <asp:Literal ID="litFimFotos" runat="server"></asp:Literal>


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
          <asp:Literal ID="litFooter" runat="server"></asp:Literal>
      </footer>


      <script src="../js/animarBtnHeader.js"></script>
      <script src="../js/VerificarUsuario.js"></script>
      <script src="../js/DeslogarUsuario.js"></script>
      <script src="../js/verificacoesInputsDoacao.js"></script>
      <script src="./../swiper/swiper-bundle.min.js"></script>
      <script src="./../js/carrossel-itens.js"></script>
      <script src="./../js/popup.js"></script>
      <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>
      <script src="./../js/pix.js"></script>
      <script src="./../js/gerarPix.js"></script>
      <script src="../js/RealizarDoacaoOng.js"></script>
      <script src="../js/DenunciarUsuario.js"></script>
      <script src="../js/alteracaoCoresBarraPorcentagem.js"></script>
  </form>
</body>
</html>