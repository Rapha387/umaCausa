﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ongs.aspx.cs" Inherits="prjUmaCausaTcc.pages.ongs" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="./../images/icone.svg" type="image/x-icon" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./../css/index.css" />
    <link rel="stylesheet" href="./../css/ongs.css" />
    <title>umaCausa - Ongs</title>
</head>
<body>
    <form id="form1" runat="server">

      <asp:Literal ID="litHeader" runat="server"></asp:Literal>

      <main>
        <div class="ongs">
          <h2>ONGS</h2>
            <asp:Literal ID="litOngs" runat="server"></asp:Literal>
            <div style="display:flex; width: 100%; justify-content: center;">
                <asp:ImageButton ID="btnBack" OnClick="btnBack_Click" runat="server"
               ImageUrl="./../images/botoes/seta.png" CssClass="backButton itemPaginacao">
                </asp:ImageButton>
                <asp:Literal ID="litItemPaginacao" runat="server"></asp:Literal>
                <asp:ImageButton ID="btnNext" OnClick="btnNext_Click" runat="server"
               ImageUrl="./../images/botoes/seta.png" CssClass="nextButton itemPaginacao">
                </asp:ImageButton>
            </div>
        </div>
        <div class="pesquisa">
          <div class="pesquisar">
              <asp:TextBox ID="txtPesquisa" runat="server" type="search" placeholder="Pesquisar"></asp:TextBox>
                <img src="./../images/icons/search.png" alt="lupa">
          </div>
          <div class="filtro">
            <h3>Filtrar Por:</h3>
              <asp:DropDownList ID="ddlCategoria" AutoPostBack="true" OnTextChanged="ddlCategoria_TextChanged" runat="server"></asp:DropDownList>
            <select name="DataCricacao" id="b">
              <option value="DataCricacao">Data de Criação</option>
            </select>
          </div>
        </div>
      </main>

      <footer>
          <asp:Literal ID="litFooter" runat="server"></asp:Literal>
      </footer>

      <script src="../js/DeslogarUsuario.js"></script>
    </form>
</body>
</html>