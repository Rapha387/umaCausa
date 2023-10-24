<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="criarCampanha.aspx.cs" Inherits="prjUmaCausaTcc.pages.criarCampanha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css">
  <link rel="stylesheet" href="./../css/index.css">
  <link rel="stylesheet" href="./../css/criarCampanha.css">
  <title>Criar divulgação de item</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Literal ID="litHeader" runat="server"></asp:Literal>

        <main>
            <div class="tituloDivulgacaoItem">
              <h1>Criar Campanha</h1>
            </div>

            <div class="tudo">
              <div class="inputs">
                <div class="input-label">
                  <label>Nome:</label>
                  <input placeholder="Campanha do Agasalho">
                </div>
                <div class="input-label">
                  <label>Tipo da Campanha:</label>
                  <select name="" id="">
                    <option value="monetaria">Monetária</option>
                    <option value="item">Item</option>
                  </select>
                </div>
                <div class="input-label">
                  <label>Quantidade desejada:</label>
                  <input type="number" placeholder="5">
                </div>
                <div class="input-label">
                  <label>Data de Finalização:</label>
                  <input type="date" placeholder="5">
                </div>
                <div class="separar-inputs">
                  <div class="input-label">
                    <label>Tipo do Item:</label>
                    <select name="" id="">
                      <option value="">Ração</option>
                    </select>
                  </div>
                  <div class="input-label">
                    <label>Descrição da Campanha:</label>
                    <textarea placeholder="descrição..."></textarea>
                  </div>
  
                </div>

                <div class="input-label">
                  <label for="">Imagem do Item:</label>
                  <div class="espaco-imagem">
                    <label class="custom-file-upload">
                      <input type="file" id="fileInput" accept="image/*" />
                      <span class="textoInputFile">Carregar Foto</span>
                    </label>
                    <span id="nomeArquivo">Imagem Retangular em JPG</span>
                  </div>
                </div>
                <button>Criar Divulgação</button>
              </div>
            </div>
      </main>

    <footer>
        <asp:Literal ID="litFooter" runat="server"></asp:Literal>
    </footer>

        <script src="./../js/inputFile.js"></script>
    </form>
</body>
</html>
