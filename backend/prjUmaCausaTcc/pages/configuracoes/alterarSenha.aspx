<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alterarSenha.aspx.cs" Inherits="prjUmaCausaTcc.pages.configuracoes.alterarSenha" %>

<!DOCTYPE html>

<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap" rel="stylesheet">
  <link rel="icon" href="./../../images/icone.svg" type="image/x-icon" />
  <link rel="stylesheet" href="./../../css/index.css">
  <link rel="stylesheet" href="./../../css/alterarSenha.css">
  <title>UmaCausa - Meu Perfil</title>
</head>
<body>
    <form id="form1" runat="server">
          <header>
            <asp:Literal ID="LitHeader" runat="server"></asp:Literal>
          </header>

          <main>
            <asp:Literal ID="LitMenu" runat="server"></asp:Literal>

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
          </main>
  
          <footer>
              <asp:Literal ID="LitFooter" runat="server"></asp:Literal>
          </footer>

          <script src="../../js/animarBtnHeader.js"></script>
          <script src="./../../js/inputFile.js"></script>
          <script src="./../../js/cep.js"></script>
          <script src="./../../js/DeslogarUsuario.js"></script>
    </form>
</body>
</html>
