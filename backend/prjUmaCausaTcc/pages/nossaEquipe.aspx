<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nossaEquipe.aspx.cs" Inherits="prjUmaCausaTcc.pages.nossaEquipe" %>

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
    <link rel="stylesheet" href="./../css/nossaEquipe.css" />
    <title>UmaCausa - Nossa Equipe</title>
</head>
<body>
    <form id="form1" runat="server">
          <header>
            <nav>
                <asp:Literal ID="litHeader" runat="server"></asp:Literal>
            </nav>
          </header>

          <main>
            <div>
              <h1>Conheça nossa Equipe</h1>
              <div class="equipeImg">
                <div class="infos">
                  <img class="foto" src="./../images/equipe/alisson.png" />
                  <div class="infosPessoal">
                    <p><strong>Alisson Ramos</strong> </p>
                    <p>Designer e Desenvolvedor</p>
                  </div>
                </div>
                <div class="infos">
                  <img class="foto" src="./../images/equipe/gui.png" />
                  <div class="infosPessoal">
                    <p><strong>Guilherme Negrão</strong> </p>
                    <p>DB Supporter</p>
                  </div>
                </div>
                <div class="infos">
                  <img class="foto" src="./../images/equipe/gu.png" />
                  <div class="infosPessoal">
                    <p><strong>Gustavo Negrão</strong> </p>
                    <p>DB Supporter</p>
                  </div>
                </div>
                <div class="infos">
                  <img class="foto" src="./../images/equipe/lau.jpg" />
                  <div class="infosPessoal">
                    <p><strong>Laura Felice</strong> </p>
                    <p>Designer e Front-End</p>
                  </div>
                </div>
                <div class="infos">
                  <img class="foto" src="./../images/equipe/ma.jpg" />
                  <div class="infosPessoal">
                    <p><strong>Marcella Oliveira</strong> </p>
                    <p>Designer e Front-End</p>
                  </div>
                </div>
                <div class="infos">
                  <img class="foto" src="./../images/equipe/rapha.jpg" />
                  <div class="infosPessoal">
                    <p><strong>Raphael Lima</strong> </p>
                    <p>Designer e Desenvolvedor</p>
                  </div>
                </div>
              </div>
            </div>
          </main>

        <footer>
            <asp:Literal ID="litFooter" runat="server"></asp:Literal>
        </footer>
    </form>
</body>
</html>
