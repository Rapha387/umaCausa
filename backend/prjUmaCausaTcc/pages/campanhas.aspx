﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="campanhas.aspx.cs" Inherits="prjUmaCausaTcc.pages.campanhas" %>

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
        <header>
            <nav>
              <asp:Literal ID="litHeader" runat="server"></asp:Literal>
            </nav>
          </header>
  </div>
  <main>
    <div class="campanhas">
      <h2>CAMPANHAS</h2>
      <div class="campanhas-flex">
              <asp:Literal ID="litCampanhas" runat="server"></asp:Literal>
<%--        <a href="./campanha.html">
          <div class="campanha">
            <div class="imagem-campanha"></div>
            <div class="sobre-campanha">
              <div class="nome-campanha">
                Evento De Doação de Ca...
              </div>
              <div class="progresso">
                <div class="barra-progresso">
                  <div class="quantidade-progresso"></div>
                </div>
                <div class="porcentagem">15%</div>
              </div>
            </div>
          </div>
        </a>--%>
      </div>
    </div>
    <div class="pesquisa">
      <div class="pesquisar">
        <input type="search" placeholder="Pesquisar">
        <img src="./../images/icons/search.png" alt="lupa">
      </div>
      <div class="filtro">
        <h3>Filtrar Por:</h3>
        <select name="Categoria" id="">
          <option value="Categoria">Categoria</option>
        </select>
        <select name="DataCricacao" id="">
          <option value="DataCricacao">Data de Criação</option>
        </select>
      </div>
    </div>
  </main>

    <footer>
        <asp:Literal ID="litFooter" runat="server"></asp:Literal>
    </footer>

  <script src="./../swiper/swiper-bundle.min.js"></script>
  <script src="./../js/carrossel-itens.js"></script>
  <script src="./../js/home.js"></script>
    </form>
</body>
</html>
