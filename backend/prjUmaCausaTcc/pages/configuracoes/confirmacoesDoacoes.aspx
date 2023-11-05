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
    <link rel="icon" href="./../../images/icone.svg" type="image/x-icon" />
    <link rel="stylesheet" href="./../../css/index.css" />
    <link rel="stylesheet" href="./../../css/confirmacoesDoacoes.css" />
    <title>UmaCausa - Confirmar Doações</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Literal ID="Navegacao" runat="server"></asp:Literal>

        <div class="bloqueio escondido"></div>

        <div class="caixa-flutuante popup-confirmacao escondido">
            <p id="textoConfirmacao" class="textoPopupResposta">Tem certeza que deseja recusar essa doação?</p>
            <div class="botoes-confirmacao">
                <div class="botao-confirmacao" onclick="recusarDoacao(this)" id="btnAceitarConfirmacao">Sim</div>
                <div class="botao-confirmacao" onclick="esconderPopupConfirmacao()" id="btnRecusarConfirmacao">Não</div>
            </div>
        </div>

        <main>
            <asp:Literal ID="Menu" runat="server"></asp:Literal>
            <hr />
          <div class="infos-configuracoes">
            <div class="infos">
                <div class="filtro-confirmacoes">
                  <a href="confirmacoesDoacoes.aspx">
                      <div class="filtros">
                        <img src="./../../images/icons/confirmacao.png" alt="" />Doações à confirmar
                      </div>
                  </a>
                  <a href="confirmacoesDoacoes.aspx?pagina=1">
                    <div class="filtros">
                        <img src="./../../images/icons/confirmacao.png" alt="" />Doações já confirmadas
                    </div>
                  </a>
                </div>
                <div class="confirmacoes">
                    <asp:Literal ID="Confirmacoes" runat="server" ></asp:Literal>
                    <asp:Panel ID="pnlBotao" runat="server"></asp:Panel>
                    <asp:Panel ID="pnlDonwload" runat="server"></asp:Panel>
                </div>
             </div>
           </div>
        </main>

        <footer>
            <asp:Literal ID="Footer" runat="server"></asp:Literal>
        </footer>


        <script src="../../js/popup.js"></script>
        <script src="./../../js/animarBtnHeader.js"></script>
        <script src="./../../js/DeslogarUsuario.js"></script>
        <script src="../../js/ConfirmarDoacao.js"></script>

    </form>
</body>
</html>
