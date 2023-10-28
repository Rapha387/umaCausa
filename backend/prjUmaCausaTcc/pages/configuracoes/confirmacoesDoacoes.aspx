﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmacoesDoacoes.aspx.cs" Inherits="prjUmaCausaTcc.pages.configuracoes.confirmacoesDoacoes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@300;500;900&display=swap"
      rel="stylesheet"
    />
    <link rel="icon" href="./../../images/icone.svg" type="image/x-icon" />
    <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./../../css/index.css" />
    <link rel="stylesheet" href="./../../css/confirmacoesDoacoes.css" />
    <title>UmaCausa - Meu Perfil</title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:Literal ID="Navegacao" runat="server"></asp:Literal>
        </header>

        <main>
            <asp:Literal ID="Menu" runat="server"></asp:Literal>
            <hr />
          <div class="infos-configuracoes">
            <div class="infos">
                <div class="filtro-confirmacoes">
                  <a href="confirmacoesDoacoes.aspx">
                      <div class="filtros">
                        <img src="./../../images/icons/confirmacao.png" alt="" />Doações à confirmar
                      </div>
                  </a>
                  <a href="confirmacoesDoacoes.aspx?pagina=1">
                    <div class="filtros">
                        <img src="./../../images/icons/confirmacao.png" alt="" />Doações já confirmadas
                    </div>
                  </a>
                </div>
                <div class="confirmacoes">
                    <asp:Literal ID="Confirmacoes" runat="server" ></asp:Literal>
                </div>
             </div>
           </div>
        </main>

        <footer>
            <asp:Literal ID="Footer" runat="server"></asp:Literal>
        </footer>


        <script src="./../../js/DeslogarUsuario.js"></script>
        <script src="./../../js/inputFile.js"></script>
        <script src="./../../js/cep.js"></script>

    </form>
</body>
</html>
