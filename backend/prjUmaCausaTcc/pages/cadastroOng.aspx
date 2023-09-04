﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroOng.aspx.cs" Inherits="prjUmaCausaTcc.pages.cadastroOng" %>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
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
    <link rel="stylesheet" href="./../css/cadastroOng.css" />
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
            <input type="text" placeholder="ex: Cennin">
          </div>
          <div class="input-label">
            <label for="">CNPJ:</label>
            <input type="number" placeholder="ex: 111.111.111-00">
          </div>
          <div class="input-label">
            <label for="">Email:</label>
            <input type="email" placeholder="ex: cennin@gmail.com" >
          </div>
          <div class="input-label">
            <label for="">Telefone:</label>
            <input type="tel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="ex: +55 (13) 997845669">
          </div>
        </div>

        <div class="titulo-info">
          <p>Endereço:</p>
        </div>
        <div class="infos">
          <div class="input-label" id="cep">
            <label for="">CEP:</label>
            <input type="number" id="txtCep" placeholder="ex: 11538105">
          </div>
          <div class="input-label" id="UF">
            <label for="">UF:</label>
            <select name="" id="txtUF">
              <option value=""></option>
              <option value="AC">AC</option>
              <option value="AL">AL</option>
              <option value="AP">AP</option>
              <option value="AM">AM</option>
              <option value="BA">BA</option>
              <option value="CE">CE</option>
              <option value="DF">DF</option>
              <option value="ES">ES</option>
              <option value="GO">GO</option>
              <option value="MA">MA</option>
              <option value="MT">MT</option>
              <option value="MS">MS</option>
              <option value="MG">MG</option>
              <option value="PA">PA</option>
              <option value="PB">PB</option>
              <option value="PR">PR</option>
              <option value="PE">PE</option>
              <option value="PI">PI</option>
              <option value="RJ">RJ</option>
              <option value="RN">RN</option>
              <option value="RS">RS</option>
              <option value="RO">RO</option>
              <option value="RR">RR</option>
              <option value="SC">SC</option>
              <option value="SP">SP</option>
              <option value="SE">SE</option>
              <option value="TO">TO</option>
            </select>
          </div>
          <div class="input-label" id="cidade">
            <label for="">Cidade:</label>
            <input type="text" placeholder="ex: Santos" id="txtCidade">
          </div>
          <div class="input-label" id="bairro">
            <label for="">Bairro:</label>
            <input type="text" placeholder="ex: Rua Alexandre Martins" id="txtBairro">
          </div>
          <div class="input-label" id="logradouro">
            <label for="">Logradouro:</label>
            <input type="text" placeholder="ex: +55 (13) 997845669" id="txtLogadouro">
          </div>
          <div class="input-label" id="numero">
            <label for="">Número:</label>
            <input type="number" placeholder="ex:54" id="txtNumero">
          </div>
          <div class="input-label" id="complemento">
            <label for="">Complemento:</label>
            <input type="text" id="txtComplemento">
          </div>
        </div>
        
        <div class="titulo-info">
          <p>Informações Gerais:</p>
        </div>
        <div class="infos">
          <div class="input-label">
            <label for="">Pix:</label>
            <input type="text">
          </div>
          <div class="input-label">
            <label for="">WebSite:</label>
            <input type="url">
          </div>
          <div>
            <div class="input-label" id="categoria">
              <label for="">Categoria:</label>
              <select name="" id="">
                <option value="">Selecione a Categoria</option>
              </select>
            </div>
            <div class="input-label" id="itens">
              <label for="">Itens Aceitos:</label>
              <select name="" id="">
                <option value="">Selecione o tipo do Item</option>
              </select>
            </div>
            <div class="input-label" id="dsOng">
              <label for="">Resumo da Ong:</label>
              <textarea name="" id="" cols="30" rows="10"></textarea>
            </div>
          </div>
          <div class="input-label" id="logo">
            <label for="">Logo da Ong:</label>
            <div class="espaco-imagem">
              <label class="custom-file-upload">
                <input type="file" id="fileInput" accept="image/*" />
                <span class="textoInputFile">Carregar Foto</span>
              </label>
              <span id="nomeArquivo">Foto quadrada em JPG</span>
            </div>
          </div>
          <div class="input-label" id="bannerOng">
            <label for="">Banner da Ong:</label>
            <div class="espaco-imagem">
              <label class="custom-file-upload">
                <input type="file" id="fileInput" accept="image/*" />
                <span class="textoInputFile">Carregar Foto</span>
              </label>
              <span id="nomeArquivo">Imagem Retangular em JPG</span>
            </div>
          </div>
  
          <button class="button-criar">Criar conta de Ong</button>
  
        </div>
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

    <script src="./../../js/inputFile.js"></script>
    <script src="./../../js/cep.js"></script>
    </form>
</body>
</html>
