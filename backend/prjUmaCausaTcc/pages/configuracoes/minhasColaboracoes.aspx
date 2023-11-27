<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="minhasColaboracoes.aspx.cs" Inherits="prjUmaCausaTcc.pages.configuracoes.minhasColaboracoes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-br">
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
    <link rel="stylesheet" href="./../../css/index.css" />
    <link rel="stylesheet" href="./../../css/minhasColaboracoes.css" />
    <title>UmaCausa - Minhas Colaborações</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Literal ID="Navegacao" runat="server"></asp:Literal>

        <main>
        <asp:Literal ID="Menu" runat="server"></asp:Literal>   
          <hr />
          <div class="infos-configuracoes">
            <div class="titulo-info">
              <img src="./../../images/icons/maos.png" alt="" />
              Minhas Colaborações
            </div>
            <div class="infos">
              <div class="pesquisar">
                    <asp:TextBox ID="TxtPesquisa" TextMode="Search" runat="server" placeholder="Pesquisar Ong..." CssClass="txtBusca"></asp:TextBox>
                    <asp:ImageButton ID="ImgPesquisar" runat="server" ImageUrl="./../../images/icons/search.png" OnClick="ImgPesquisar_Click"/>
              </div>
                <asp:Panel ID="pnlTabela" Width="100%" runat="server">
                 <div class="container-tabela">
                  <table>
                    <thead>
                      <td>Nome</td>
                      <td>Tipo</td>
                      <td>Quantidade</td>
                      <td>Data da colaboração</td>
                      <td>Confirmação</td>
                    </thead>
                    <tbody>
                        <asp:Literal ID="Colaboracoes" runat="server"></asp:Literal> 
                    </tbody>
                  </table>
                </div>
                </asp:Panel>

                <asp:Literal ID="litErro" runat="server"></asp:Literal>
            </div>
          </div>
        </main>

        <footer>
            <asp:Literal ID="Footer" runat="server"></asp:Literal>
        </footer>

        <script src="./../../js/animarBtnHeader.js"></script>
        <script src="./../../js/DeslogarUsuario.js"></script>
    </form>
</body>
</html>
