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

          <div class="caixa-flutuante popup-doacao-monetaria escondido" id="popupPrincipal">
            <img class="botao-fechar" src="./../images/icons/btnFechar.png" alt="botao de fechar">
            <div class="monetaria-flex">
              <div class="infos-doacao">
                <label for="txtValor">Valor:</label>
                <input type="number" placeholder="10,00" id="txtValor">
                <button>Gerar QRCODE</button>
                <label for="txtValor">Comprovante:</label>
                <input type="file">
              </div>

              <div class="espacamento"></div>
      
              <div class="qrcode">
                <img src="" alt="">
              </div>
            </div>
    
            <div class="botao-finalizar-doacao">
              <button>Finalizar Doação</button>
            </div>
          </div>

          <div class="caixa-flutuante denuncia escondido">
            <img class="botao-fechar" src="./../images/icons/btnFechar.png" alt="botao de fechar">
            <div class="denuncia-flex">
              <h1>qual o motivo da denúncia?</h1>
              <select name="motivoDenuncia" id="">
                <option>Selecione o motivo</option>
              </select>
              <label for="observacao">Observacao:</label>
              <textarea name="observacao" id="" cols="30" rows="5"></textarea>
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
            <div class="foto-descricao-campanha">
              <%--<div class="imagem-campanha"></div>--%>
                <asp:Literal ID="litImagem" runat="server"></asp:Literal>
              <div class="descricao-campanha">
                <h1><asp:Literal ID="litNome" runat="server"></asp:Literal></h1>
                <h3>SOBRE</h3>
                <p><asp:Literal ID="litDescricao" runat="server"></asp:Literal></p>
              </div>
            </div>
            <div class="infos-campanha">
              <div class="meta">
                <h3>R$<asp:Literal ID="litMeta" runat="server"></asp:Literal></h3>
                <p>Arrecadados da meta de R$<asp:Literal ID="litArrecadado" runat="server"></asp:Literal></p>
                <div class="barra-meta">
                    <asp:Literal ID="litProgresso" runat="server"></asp:Literal>
                  <%--<div class="progresso"></div>--%>
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
                  <%--<img src="../images/ods/ods15.png" alt="">--%>
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
  
        <script src="./../js/popup.js"></script>
        <script src="../js/DeslogarUsuario.js"></script>
    </form>
</body>
</html>
