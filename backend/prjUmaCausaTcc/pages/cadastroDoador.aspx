﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroDoador.aspx.cs" Inherits="prjUmaCausaTcc.pages.cadastroDoador" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./../css/index.css" />
    <link rel="stylesheet" href="./../css/cadastroDoador.css" />
    <title>nome da pagina</title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
      <nav>
        <a href="./index.html"
          ><img src="./../images/logo/logo.png" alt=""
        /></a>
        <ul>
          <li><a href="./ongs.html">Ongs</a></li>
          <li><a href="./campanhas.html">Campanhas</a></li>
          <li><a href="./login.html">Login</a></li>
          <li>
            <a href="./cadastro.html"
              ><button>
                <img src="./../images/icons/user.png" />Cadastre-se
              </button></a
            >
          </li>
        </ul>
      </nav>
    </header>

    <main>
      <div class="infos-cadastro">
        <div class="titulo-info">
         <p>Dados Pessoais:</p>
        </div>
        <div class="infos">
          <div class="input-label">
            <label for="">Nome:</label>
              <asp:TextBox ID="txtNome" runat="server" placeholder="ex: Cennin"></asp:TextBox>
              <span id="erroNome" class="spanErro"></span>
          </div>
          <div class="input-label">
            <label for="">CPF:</label>
            <asp:TextBox ID="txtIdentificacao" TextMode="Number" runat="server" placeholder="ex: 111.111.111-00"></asp:TextBox>
            <span id="erroIdentificacao" class="spanErro"></span>
          </div>
          <div class="input-label">
            <label for="">Email:</label>
            <asp:TextBox ID="txtEmail" TextMode="Email" AutoCompleteType="Email" runat="server" placeholder="ex: ex: cennin@gmail.com"></asp:TextBox>
            <span id="erroEmail" class="spanErro"></span>
          </div>
          <div class="input-label">
            <label for="">Telefone:</label>
            <asp:TextBox ID="txtTelefone" TextMode="Number" AutoCompleteType="Cellular" runat="server" placeholder="ex: +55 (13) 997845669"></asp:TextBox>
            <span id="erroTelefone" class="spanErro"></span>
          </div>
            <div class="input-label">
            <label for="">Senha:</label>
            <asp:TextBox ID="txtSenha" TextMode="Password" runat="server"></asp:TextBox>
            <span id="erroSenha" class="spanErro"></span>
          </div>
            <div class="input-label">
            <label for="">Confirmar a Senha:</label>
            <asp:TextBox ID="txtConfirmarSenha" TextMode="Password" runat="server"></asp:TextBox>
            <span id="erroConfirmarSenha" class="spanErro"></span>
          </div>
        </div>

        <div class="titulo-info">
          <p>Endereço:</p>
        </div>
        <div class="infos">
          <div class="input-label" id="cep">
            <label for="">CEP:</label>
            <asp:TextBox ID="txtCep" TextMode="Number" runat="server" placeholder="ex: 11538105"></asp:TextBox>
          </div>
          <div class="input-label" id="UF">
            <label for="">UF:</label>
              <asp:DropDownList ID="txtUF" runat="server">
                  <asp:ListItem value="" Text=""/>
                  <asp:ListItem value="AC" Text="AC"/>
                  <asp:ListItem value="AL" Text="AL"/>
                  <asp:ListItem value="AP" Text="AP"/>
                  <asp:ListItem value="AM" Text="AM"/>
                  <asp:ListItem value="BA" Text="BA"/>
                  <asp:ListItem value="CE" Text="CE"/>
                  <asp:ListItem value="DF" Text="DF"/>
                  <asp:ListItem value="ES" Text="ES"/>
                  <asp:ListItem value="GO" Text="GO"/>
                  <asp:ListItem value="MA" Text="MA"/>
                  <asp:ListItem value="MT" Text="MT"/>
                  <asp:ListItem value="MS" Text="MS"/>
                  <asp:ListItem value="MG" Text="MG"/>
                  <asp:ListItem value="PA" Text="PA"/>
                  <asp:ListItem value="PB" Text="PB"/>
                  <asp:ListItem value="PR" Text="PR"/>
                  <asp:ListItem value="PE" Text="PE"/>
                  <asp:ListItem value="PI" Text="PI"/>
                  <asp:ListItem value="RJ" Text="RJ"/>
                  <asp:ListItem value="RN" Text="RN"/>
                  <asp:ListItem value="RS" Text="RS"/>
                  <asp:ListItem value="RO" Text="RO"/>
                  <asp:ListItem value="RR" Text="RR"/>
                  <asp:ListItem value="SC" Text="SC"/>
                  <asp:ListItem value="SP" Text="SP"/>
                  <asp:ListItem value="SE" Text="SE"/>
                  <asp:ListItem value="TO" Text="TO"/>
              </asp:DropDownList>
          </div>
          <div class="input-label" id="cidade">
            <label for="">Cidade:</label>
            <asp:TextBox ID="txtCidade" runat="server" placeholder="ex: Santos"></asp:TextBox>
          </div>
          <div class="input-label" id="bairro">
            <label for="">Bairro:</label>
            <asp:TextBox ID="txtBairro" runat="server" placeholder="ex: Rua Alexandre Martins"></asp:TextBox>
          </div>
          <div class="input-label" id="logradouro">
            <label for="">Logradouro:</label>
            <asp:TextBox ID="txtLogradouro" runat="server" placeholder="ex: +55 (13) 997845669"></asp:TextBox>
          </div>
          <div class="input-label" id="numero">
            <label for="">Número:</label>
            <asp:TextBox ID="txtNumero" TextMode="Number" runat="server" placeholder="ex:54"></asp:TextBox>
          </div>
          <div class="input-label" id="complemento">
            <label for="">Complemento:</label>
            <asp:TextBox ID="txtComplemento" runat="server" placeholder="ex:Apt. 14"></asp:TextBox>
          </div>
          <span id="erroEndereco" class="spanErro"></span>
        </div>
          <asp:Label ID="lblErro" runat="server"></asp:Label>
        <asp:Button class="button-criar" ID="btnCadastrarDoador" runat="server" Text="Criar conta de Doador" onclick="btnCadastrarDoador_Click"/>

      </div>
    </main>

    <footer>
      <nav>
        <a href="./index.html"
          ><img src="./../images/logo/logoBranca.png" alt="logo umaCausa"
        /></a>
        <div>
          <h3>Inicio</h3>
          <p><a href="./index.html">Home</a></p>
          <p><a href="./campanhas.html">Campanhas</a></p>
          <p><a href="./ongs.html">ONGs</a></p>
        </div>
        <div>
          <h3>Sobre Nós</h3>
          <p><a href="./sobre.html">Sobre</a></p>
          <p><a href="./nossaEquipe.html">Nossa Equipe</a></p>
        </div>
        <div>
          <h3>Suporte</h3>
          <p><a href="./faq.html">FAQ</a></p>
        </div>
      </nav>
    </footer>

    <script src="./../js/verificacoesInputs.js"></script>
    <script src="./../js/cep.js"></script>

    </form>
</body>
</html>