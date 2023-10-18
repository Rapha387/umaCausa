<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="campanhas.aspx.cs" Inherits="prjUmaCausaTcc.pages.campanhas" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="icon" href="./../images/icone.svg" type="image/x-icon" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap" rel="stylesheet">
  
  <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css">
  <link rel="stylesheet" href="./../css/index.css">
  <link rel="stylesheet" href="./../css/campanhas.css">

  <title>umaCausa - Campanhas</title>
</head>
<body>
    <form id="form1" runat="server">

          <asp:Literal ID="litHeader" runat="server"></asp:Literal>

          <main>
            <div class="pesquisa">
              <div class="pesquisar">
                <asp:TextBox ID="txtPesquisa" Placeholder="Pesquisar" TextMode="Search" runat="server"></asp:TextBox>
                <asp:ImageButton ID="btnPesquisar" OnClick="btnPesquisar_Click" runat="server" ImageUrl="./../images/icons/search.png"/>
              </div>
              <div class="filtro">
                <h3>Filtrar Por:</h3>
                <asp:DropDownList ID="ddlCategoria" AutoPostBack="true" OnTextChanged="ddlCategoria_TextChanged" runat="server">
                  <asp:ListItem selected="True" hidden>Categoria</asp:ListItem>
              </asp:DropDownList>
                <select name="DataCricacao" id="">
                  <option value="DataCricacao">Data de Criação</option>
                </select>
              </div>
            </div>
            <div class="campanhas">
              <h2>CAMPANHAS</h2>
              <div class="campanhas-flex">
                <asp:Literal ID="litCampanhas" runat="server"></asp:Literal>
                <div class="paginacao">
                   <asp:ImageButton ID="btnBack" OnClick="btnBack_Click" runat="server" ImageUrl="./../images/botoes/seta.png" CssClass="backButton itemPaginacao"></asp:ImageButton>
                   <asp:Literal ID="litItemPaginacao" runat="server"></asp:Literal>
                   <asp:ImageButton ID="btnNext" OnClick="btnNext_Click" runat="server" ImageUrl="./../images/botoes/seta.png" CssClass="nextButton itemPaginacao"> </asp:ImageButton>
                </div>
              </div>
            </div>
          </main>

          <footer>
            <asp:Literal ID="litFooter" runat="server"></asp:Literal>
          </footer>

          <script src="../js/DeslogarUsuario.js"></script>
          <script src="../js/alteracaoCoresBarraPorcentagem.js"></script>
    </form>
</body>
</html>
