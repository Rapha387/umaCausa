﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="prjUmaCausaTcc.pages.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-br">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="icon" href="./../images/icone.svg" type="image/x-icon" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css" />
  <link rel="stylesheet" href="./../css/index.css" />
  <link rel="stylesheet" href="./../css/login.css" />
  <title>Login - umaCausa</title>
</head>
<body>
    <form id="form1" runat="server">

      <asp:Literal ID="litHeader" runat="server"></asp:Literal>

      <div class="principalLogin">
        <div class="bannerLogin"></div>
        <div class="login">
            <h1 style="text-align:center">Sign In</h1>
            <div class="input-label">
                <label>Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
            </div>
            <div class="input-label">
                <label>Senha:</label>
                <asp:TextBox ID="txtSenha" TextMode="Password" runat="server" placeholder="Senha"></asp:TextBox>
            </div>

            <asp:Label ID="lblErroMSG" runat="server" Text="" CssClass="erromsg"></asp:Label>
             <p><strong>Esqueceu a senha?</strong></p>
             <asp:Button ID="btnConectar" runat="server" Text="Logar" OnClick="btnConectar_Click"/>
             <p>Novo por Aqui?<strong> Crie uma conta</strong></p>
        </div>
      </div>
    </form>
</body>
</html>