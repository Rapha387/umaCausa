<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="esqueciMinhaSenha.aspx.cs" Inherits="prjUmaCausaTcc.pages.esqueciMinhaSenha" %>

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
   <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="./../css/index.css">
  <link rel="stylesheet" href="./../../css/esqueciMinhaSenha.css">
  <title>UmaCausa - Alterar Senha</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="litHeader" runat="server"></asp:Literal>
        <main>
            <asp:Panel ID="pnlEnviarEmail" runat="server" Visible="false">
                <div class="card">
                    <img src="./../../images/icons/cadeado.svg" width="30%" style="margin:auto" alt="Cadeado" />
                    <p><strong>Problemas ao iniciar sessão ?</strong></p>
                    <p>Insira o teu e-mail e vamos enviar um código para recuperar o acesso à tua conta.</p>
                    <asp:TextBox ID="txtDestinatario" runat="server" Width="100%" placeholder="Email"></asp:TextBox>
                    <asp:Button ID="btnEnviar" runat="server" Text="Enviar" onclick="btnEnviar_Click" /> 
                </div>  
            </asp:Panel>
            <asp:Panel ID="pnlEnviado" runat="server" Visible="false">
                        <div class="card">
                            <p><strong>Insira o código de segurança</strong></p>
                            <p>Verifique seu e-mail para obter um link para redefinir sua senha. Se não aparecer em alguns minutos, verifique sua pasta de spam.</p>
                            <asp:Button ID="Retornar" runat="server" Text="Retorne para o Login" onclick="Retornar_Click" /> 
                        </div>
            </asp:Panel>
            <asp:Panel ID="pnlAlterarSenha" runat="server" Visible="false">
                <div class="card">
                    <p>A tua palavra-passe tem que ter, pelo menos, 8 carateres.</p>
                    <div class="input-label">
                        <label for="">Senha:</label>
                        <asp:TextBox ID="TxtNovaSenha" runat="server" MinLength="8" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="input-label">
                        <label for="">Confirme a senha:</label>
                        <asp:TextBox ID="TxtRepeticao" runat="server" MinLength="8" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:Button ID="BtnSalvar" runat="server" Text="Salvar Alterações" OnClick="BtnSalvar_Click"/>
                </div>
            </asp:Panel>
            <div class="itens-erro">
                <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>        
            </div>
        </main>
        <footer>
            <asp:Literal ID="litFooter" runat="server"></asp:Literal>
        </footer>
    </form>
</body>
</html>
