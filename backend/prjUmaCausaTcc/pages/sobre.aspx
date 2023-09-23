<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sobre.aspx.cs" Inherits="prjUmaCausaTcc.pages.sobre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="icon" href="./../images/icone.svg" type="image/x-icon" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./../css/index.css" />
    <link rel="stylesheet" href="./../css/sobre.css" />
    <title>UmaCausa - Sobre Nós</title>
</head>
<body>
    <form id="form1" runat="server">
          <header>
            <nav>
                <asp:Literal ID="litHeader" runat="server"></asp:Literal>
            </nav>
          </header>

          <main>
            <div class="principalSobre">
                <div class="fotoLogo">
                    <img src="./../images/logo/logo.png" alt="" />
                    <div class="titulo">
                        <h1>Divulgando seu propósito ao mundo</h1>
                    </div>
                </div>
            </div>

              <div class="imagemBanner">

              </div>

              <div class="textoPrincipal">
                 <div class="infosSobre">
                   <h3>Objetivo</h3>
                   <p>Nosso objetivo sempre foi e sempre será a 
                    busca por um mundo mais inclusivo e justo.
                    Causar um impacto positivo social, cultural e 
                    ambiental. 
                    O nosso propósito é com você.</p>
                 </div>
         
                 <div class="infosSobre">
                   <h3>Criação</h3>
                   <p>Lançado desde 2023 por um grupo de TCC do
                    curso de Desenvolvimento de sistemas da
                    escola técnica Etec Aristóteles Ferreira da
                    cidade de Santos/SP.
                    Ideia pensada em conjunto para beneficiar o
                    bem ao próximo
                   </p>
                 </div>

                 <div class="infosSobre">
                   <h3>O que Somos?</h3>
                   <p>Uma plataforma para a divulgação de sua ONG, 
                    campanha ou itens conservados disponiveis para
                    repassar ao próximo.  
                   </p>
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
