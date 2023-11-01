<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="campanha.aspx.cs" Inherits="prjUmaCausaTcc.pages.campanha" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" href="./../images/icone.svg" type="image/x-icon" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css">
  <link rel="stylesheet" href="./../css/index.css">
  <link rel="stylesheet" href="./../css/campanha.css">
    <title><asp:Literal ID="litWebNome" runat="server"></asp:Literal></title>
</head>
<body>
    <form id="form1" runat="server">

          <asp:Literal ID="litHeader" runat="server"></asp:Literal>

          <div class="bloqueio escondido"></div>

          <div class="caixa-flutuante popup-sucesso escondido">
            <img src="./../images/popupsResposta/sucesso.png"/>
            <p id="textoRespostaSucesso" class="textoPopupResposta"></p>
            <div class="btnFecharPopUpResposta">Continuar</div>
          </div>

          <div class="caixa-flutuante popup-erro escondido">
            <img src="./../images/popupsResposta/erro.png"/>
            <p id="textoRespostaErro" class="textoPopupResposta"></p>
            <div class="btnFecharPopUpResposta">Voltar</div>
          </div>

          <asp:Panel ID="pnlDoacaoMonetaria" runat="server" Visible="false">
           <div id="popupPrincipal" class="caixa-flutuante popup-doacao-monetaria escondido">
             <img class="botao-fechar" src="./../images/icons/btnFechar.png" alt="botao de fechar">
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
         </asp:Panel>

         <asp:Panel ID="pnlDoacaoItem" runat="server" Visible="false">
            <div id="popupPrincipal" class="caixa-flutuante popup-doacao-item escondido">
                <img class="botao-fechar" src="./../images/icons/btnFechar.png" alt="botao de fechar">
                <div class="infos-doacao">
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
                </div>
                <button id="btnAgendarItem">Agendar Doação</button>
            </div>
          </asp:Panel>
        
          <div class="caixa-flutuante denuncia escondido">
            <img class="botao-fechar" src="./../images/icons/btnFechar.png" alt="botao de fechar">
            <div class="denuncia-flex">
                <h1>qual o motivo da denúncia?</h1>
                <asp:DropDownList ID="cmbMotivoDenuncia" runat="server"> </asp:DropDownList>
                <label for="observacao">Observacao:</label>
                <textarea name="observacao" id="txtObservao" cols="30" rows="5"></textarea>
                <span id="erroDenuncia" class="spanErro" style="text-align: center"></span>
                <button id="btnRealizarDenunciaCampanha">Denunciar</button>
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
            <div class="foto-descricao-campanha">
                <asp:Literal ID="litImagem" runat="server"></asp:Literal>
              <div class="descricao-campanha">
                <h1><asp:Literal ID="litNome" runat="server"></asp:Literal></h1>
                <h3>SOBRE</h3>
                <p><asp:Literal ID="litDescricao" runat="server"></asp:Literal></p>
              </div>
            </div>
            <div class="infos-campanha">
              <div class="meta">
                <h3><asp:Literal ID="litMeta" runat="server"></asp:Literal></h3>
                <p><asp:Literal ID="litArrecadado" runat="server"></asp:Literal></p>
                <div class="barra-meta">
                    <asp:Literal ID="litProgresso" runat="server"></asp:Literal>
                </div>
                <button id="btnDoar">DOAR</button>
              </div>
              <div class="realizador-campanha">
                <h3>Realizador dessa campanha</h3>
                <asp:Literal ID="litONG" runat="server"></asp:Literal>
        
              </div>
              <div class="ods-campanha">
                <h3>Objetivos do Desenvolvimento Sustentável desta campanha</h3>
                <div class="flex-ods">
                    <asp:Literal ID="litOds" runat="server"></asp:Literal>
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
          </main>

          <footer>
              <asp:Literal ID="litFooter" runat="server"></asp:Literal>
          </footer>

        <script src="../js/animarBtnHeader.js"></script>
        <script src="../js/VerificarUsuario.js"></script>
        <script src="../js/DeslogarUsuario.js"></script>
        <script src="../js/verificacoesInputsDoacao.js"></script>
        <script src="../js/DenunciarCampanha.js"></script>
        <script src="./../js/popup.js"></script>
        <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>
        <script src="./../js/pix.js"></script>
        <script src="./../js/gerarPix.js"></script>
        <script src="../js/RealizarDoacaoCampanha.js"></script>
    </form>
</body>
</html>
