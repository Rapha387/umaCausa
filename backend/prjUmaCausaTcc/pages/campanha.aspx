<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="campanha.aspx.cs" Inherits="prjUmaCausaTcc.pages.campanha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <header>
            <nav>
              
              <asp:Literal ID="litHeader" runat="server"></asp:Literal>
            </nav>
          </header>

  
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
      <div class="imagem-campanha"></div>
      <div class="descricao-campanha">
        <h1>Evento de Adoção de cães</h1>
        <h3>SOBRE</h3>
        <p>É HOJEEEE.. 
          COMPARTILHEM MUITOOOO
          EVENTO DE ADOÇÃO DE CÃES
          O Instituto Viva Bicho em parceria com o @molecaopetshop irá realizar um evento de adoção de cães no dia 24/06 (sábado)
          O evento ocorrerá no próprio Petshop Molecão, na Rua Ricardo Pinto, 89, entre 10 e 13 hrs.
          Contamos com sua presença e com a sua divulgação</p>
      </div>
    </div>
    <div class="infos-campanha">
      <div class="meta">
        <h3>R$30,00</h3>
        <p>Arrecadados da meta de R$500,00</p>
        <div class="barra-meta">
          <div class="progresso"></div>
        </div>
        <button id="btnDoar">DOAR</button>
      </div>
      <div class="realizador-campanha">
        <h3>Realizador dessa campanha</h3>
        <div class="infos-realizador">
          <img src="../images/ongs/ong1.png" alt="">
          <div>
            <h3>Instituto Viva Bichos Brasil</h3>
            <p>Idealizada por protetores, a ONG Viva Bicho foi fundada em 2000...</p>
          </div>
        </div>
      </div>
      <div class="ods-campanha">
        <h3>Objetivos do Desenvolvimento Sustentável desta campanha</h3>
        <div class="flex-ods">
          <img src="../images/ods/ods15.png" alt="">
          <img src="../images/ods/ods15.png" alt="">
          <img src="../images/ods/ods15.png" alt="">
          <img src="../images/ods/ods15.png" alt="">
          <img src="../images/ods/ods15.png" alt="">
          <img src="../images/ods/ods15.png" alt="">
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
    </form>
</body>
</html>
