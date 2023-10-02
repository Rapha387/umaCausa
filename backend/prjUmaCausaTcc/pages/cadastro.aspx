<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="prjUmaCausaTcc.pages.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <link rel="stylesheet" href="./../css/cadastro.css" />
    <title>UmaCausa - Cadastro</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="litHeader" runat="server"></asp:Literal>

        <main>
          <div class="principalInfos">
            <div class="infocaixa">
              <h1>Sign Up</h1>
              <p>Para criar sua conta, precisamos validar seus dados</p>
            </div>
            <div class="fundoCadastro">
              <p>
                Aceito os <a href="./termos.html">Termos e Condições</a> e autorizo
                o uso de meus dados de acordo com a Declaração de Privacidade.
              </p>
              <a id="btnDoador" href="cadastroDoador.aspx">Criar Conta como Doador</a>
              <a id="btnOng">Criar Conta como ONG</a>
            </div>
          </div>
        </main>

        <footer>
            <asp:Literal ID="litFooter" runat="server"></asp:Literal>
        </footer>
    </form>
</body>
</html>
