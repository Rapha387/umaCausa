<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="prjUmaCausaTcc.pages.faq" %>

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
    <link rel="stylesheet" href="./../css/faq.css" />
    <title>UmaCausa - FAQ</title>
</head>
<body>
    <form id="form1" runat="server">
          <header>
            <nav>
                <asp:Literal ID="litHeader" runat="server"></asp:Literal>
            </nav>
          </header>

          <main>
              <div class="principalFaq">
              <div class="fundoFaq">

                <h1> FAQ - Perguntas Frequentes</h1>
                <details>
                    <summary>Meu projeto se encaixa na plataforma?</summary>
                    <div>
                        A <strong> UmaCausa</strong> é para todos os tipos de projeto!
                        Trabalhamos com projetos que promovam impacto na sociedade (seja cultural, social, econômico, político ou ambiental) e cuja proposta seja viável através da dinâmica do financiamento coletivo - o que vai depender da sua relevância, credibilidade e força de divulgação.</strong> é para todos os tipos de projeto!
                        Trabalhamos com projetos que promovam impacto na sociedade (seja cultural, social, econômico, político ou ambiental) e cuja proposta seja viável
                        através da dinâmica do financiamento coletivo - o que vai depender da sua relevância, credibilidade e força de divulgação.
                    </div>
                </details>

              <details>
                <summary>Posso escolher a ONG para a qual desejo doar?</summary>
                <div>
                    Sim, você pode escolher a ONG para a qual deseja fazer sua doação. Nós fornecemos uma lista de ONGs parceiras e você pode selecionar a que mais se alinha com sua causa.
                </div>
              </details>

              <details>
                <summary>É seguro fazer doações online?</summary>
                <div>
                    Sim, garantimos que suas informações pessoais e financeiras são protegidas. Utilizamos tecnologias de segurança avançadas para garantir a segurança das transações.
                </div>
              </details>

              <details>
                <summary>Qual é a frequência das atualizações sobre projetos?</summary>
                <div>
                    As atualizações sobre os projetos variam de acordo com a ONG, mas geralmente enviamos atualizações trimestrais para manter nossos doadores informados sobre o progresso.a ONG, mas geralmente enviamos atualizações trimestrais para manter nossos doadores informados sobre o progresso.
                </div>
              </details>

              <details>
                <summary>Posso deduzir minhas doações no imposto de renda?</summary>
                <div>
                    Sim, em muitos países, as doações para ONGs são dedutíveis no imposto de renda. Certifique-se de obter um recibo de doação para fins fiscais.
                </div>
              </details>

              <details>
                <summary>Qual é a porcentagem de minha doação que vai para a ONG?</summary>
                <div>
                    Garantimos que a maior parte de sua doação vá diretamente para a ONG escolhida. A porcentagem exata pode variar, mas fazemos o possível para minimizar as taxas administrativas.
                </div>
              </details>

              <details>
                <summary>Como funciona o posicionamento e destaque dos projetos na home da UmaCausa?</summary>
                <div>
                    Projetos em destaque são aqueles que aparecem na primeira página da plataforma. O primeiro carrossel é escolhido pela equipe de projetos e atualizado semanalmente. Já os projetos em reta final, são atualizados automaticamente quando a campanha tem pelo menos 7 dias de captação pela frente.
                </div>
              </details>
              </div>
              </div>
          </main>

          <footer>
              <asp:Literal ID="litFooter" runat="server"></asp:Literal>
          </footer>
    </form>
</body>
</html>
