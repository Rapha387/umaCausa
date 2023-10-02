<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="erro.aspx.cs" Inherits="prjUmaCausaTcc.pages.erro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="icon" href="./../images/icone.svg" type="image/x-icon" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css" />
  <link rel="stylesheet" href="./../css/index.css" />
  <link rel="stylesheet" href="./../css/erro.css" />
  <title>ERRO - umaCausa</title>
</head>
<body>
    <form id="form1" runat="server">

         <asp:Literal ID="litHeader" runat="server"></asp:Literal>


          <main>
            <div class="mensagem-erro">
              <h1>OOPS!</h1>
              <h2>PARECE QUE O QUE VOCÊ PROCURA NÃO ESTÁ DISPONÍVEL</h2>
              <p class="talvez-auxilie">Talvez isso te auxilie:</p>
              <p><a href="./index.aspx">Página Inicial</a></p>
              <p><a href="./faq.aspx">Faq</a></p>
              
                
              
              <p class="msg-erro"><asp:Literal ID="litErro" runat="server"></asp:Literal></p>
            </div>
            <img class="img-erro" src="./../images/pagErro/imgErro.svg" alt="imagem de errro" />
          </main>

          <footer>
              <asp:Literal ID="litFooter" runat="server"></asp:Literal>
          </footer>

        <script src="../js/DeslogarUsuario.js"></script>
    </form>
</body>
</html>
