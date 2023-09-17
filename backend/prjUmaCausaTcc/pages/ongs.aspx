﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ongs.aspx.cs" Inherits="prjUmaCausaTcc.pages.ongs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
      <header>
          <nav>
              <asp:Literal ID="litHeader" runat="server"></asp:Literal>
          </nav>
      </header>

      <main>
        <div class="ongs">
          <h2>ONGS</h2>
          <a href="./ong.html">
            <div class="ong">
              <div class="infos-ong">
                <div class="imagem-ong"></div>
                <div class="descricao">  
                  <h3>Viva Bichos Santos e Região <img src="./../images/categorias/categoria1.png" alt=""></h3>
                  <p>
                    Idealizada por protetores, a ONG Viva Bicho foi fundada em 2000, sendo a primeira ONG
                     (Organização Não Governamental da Cidade de Santos...
                  </p>
                </div>  
              </div>
              <div class="tags">
                <div class="tag"></div>
              </div>
            </div>
          </a>
        </div>
        <div class="pesquisa">
          <div class="pesquisar">
              <asp:TextBox ID="txtPesquisa" runat="server" type="search" placeholder="Pesquisar"></asp:TextBox>
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