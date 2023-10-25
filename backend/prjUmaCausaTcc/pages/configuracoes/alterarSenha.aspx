﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alterarSenha.aspx.cs" Inherits="prjUmaCausaTcc.pages.configuracoes.alterarSenha" %>

<!DOCTYPE html>

<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css">
  <link rel="stylesheet" href="./../../css/index.css">
  <link rel="stylesheet" href="./../../css/alterarSenha.css">
  <title>UmaCausa - Meu Perfil</title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:Literal ID="LitHeader" runat="server"></asp:Literal>
   <%-- <nav>
      <a href="./../index.html"><img class="logo-header" src="./../images/logo/logoAzul.svg" alt=""></a>
      <ul>
        <li><a href="./../ongs.html">Ongs</a></li>
        <li><a href="./../campanhas.html">Campanhas</a></li>
        <li><a href="./../login.html">Login</a></li>
        <li><a href="./../cadastro.html"><button><img src="./../../images/icons/user.png" />Cadastre-se</button></a></li>
      </ul>
    </nav>--%>
  </header>

  <main>
      <asp:Literal ID="LitMenu" runat="server"></asp:Literal>
   <%-- <nav>
      <ul>
        <li>
          <a href="./meuPerfil.html">
            <img src="./../../images/icons/userAzul.png" alt="">
            Meu Perfil
          </a>
        </li>
        <li>
          <a href="./minhasColaboracoes.html">
            <img src="./../../images/icons/maos.png" alt="">
            Minhas Colaborações
          </a>
        </li>
        <li>
          <a href="./meusItens.html">
            <img src="./../../images/icons/caixa.png" alt="">
            Meus Itens
          </a>
        </li>
        <li>
          <a href="./confirmacoesDoacoes.html">
            <img src="./../../images/icons/confirmacao.png" alt="">
            Confirmações de Doações
          </a>
        </li>
        <li>
          <a href="./minhasCampanhas.html">
            <img src="./../../images/icons/megafone.png" alt="">
            Minhas Campanhas
          </a>
        </li>
        <li>
          <a href="./alterarSenha.html">
            <img src="./../../images/icons/cadeado.png" alt="">
            Alterar Senha
          </a>
        </li>
      </ul>
    </nav>  --%>
    <hr>
    <div class="infos-configuracoes">
      <div class="titulo-info">
        <img src="./../../images/icons/cadeado.png" alt="">
        Alterar Senha
      </div>
      <div class="infos">
        <div class="input-label">
          <label for="">Senha Atual:</label>
            <asp:TextBox ID="TxtSenhaAtual" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="novaSenha">
          <div class="input-label">
            <label for="">Nova Senha:</label>
           <asp:TextBox ID="TxtNovaSenha" runat="server" TextMode="Password"></asp:TextBox>

          </div>
          <div class="input-label">
            <label for="">Repita a Nova Senha:</label>
           <asp:TextBox ID="TxtRepeticao" runat="server" TextMode="Password"></asp:TextBox>

          </div>
        </div>
      </div>
        <asp:Literal ID="LitErro" runat="server"></asp:Literal>
        <asp:Button ID="BtnSalvar" runat="server" Text="Salvar Alterações" class="button-salvar" OnClick="BtnSalvar_Click"/>

      </div>
    </div>

  </main>
  
  <footer>
      <asp:Literal ID="LitFooter" runat="server"></asp:Literal>
    <%--<nav>
      <a href="./../index.html"><img src="./../../images/logo/logoBranca.png" alt="logo umaCausa" /></a>
      <div>
        <h3>Inicio</h3>
        <p><a href="./../index.html">Home</a></p>
        <p><a href="./../campanhas.html">Campanhas</a></p>
        <p><a href="./../ongs.html">ONGs</a></p>
      </div>
      <div>
        <h3>Sobre Nós</h3>
        <p><a href="./../sobre.html">Sobre</a></p>
        <p><a href="./../nossaEquipe.html">Nossa Equipe</a></p>
      </div>
      <div>
        <h3>Suporte</h3>
        <p><a href="./../faq.html">FAQ</a></p>
      </div>
    </nav>--%>
  </footer>

  <script src="./../../js/inputFile.js"></script>
  <script src="./../../js/cep.js"></script>
        <script src="./../../js/DeslogarUsuario.js"></script>

    </form>
</body>
</html>
