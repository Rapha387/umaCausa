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
  <link rel="stylesheet" href="./../../css/index.css">
  <link rel="stylesheet" href="./../../css/alterarSenha.css">
  <title>UmaCausa - Alterar Senha</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="pnlEnviarEmail" runat="server">
                    <table>
  <tr>
    <td>Email:</td>
    <td><asp:TextBox ID="txtDestinatario" runat="server" Width="210px"></asp:TextBox></td>
  </tr>
  <tr>
    <td colspan="2" align="right">
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" onclick="btnEnviar_Click" /> 
    </td>
  </tr>
</table>
        </asp:Panel>
                <asp:Panel ID="pnlEnviado" runat="server">
                    <table>
  <tr>
    <td>Código de Verificação Enviado para:<asp:Literal ID="litTexto" runat="server"></asp:Literal></td>
      
    <td><asp:TextBox ID="txtCodigo" runat="server" Width="210px"></asp:TextBox></td>
  </tr>
  <tr>
    <td colspan="2" align="right">
        <asp:Button ID="ReenviarCodigo" runat="server" Text="Reenviar Código" onclick="btnEnviar_Click" /> 
        <asp:Button ID="btnVerificar" runat="server" Text="Verificar" onclick="btnVerificar_Click" /> 
    </td>
  </tr>
</table>
        </asp:Panel>
        <asp:Panel ID="pnlAlterarSenha" runat="server">
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
  <asp:Button ID="BtnSalvar" runat="server" Text="Salvar Alterações" class="button-salvar" OnClick="BtnSalvar_Click"/>
</div>
            </asp:Panel>
        
<asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>        
    </form>
</body>
</html>
