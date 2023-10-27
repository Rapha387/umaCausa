<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroOng.aspx.cs" Inherits="prjUmaCausaTcc.pages.cadastroOng" %>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="./../images/icone.svg" type="image/x-icon" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="./../swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./../css/index.css" />
    <link rel="stylesheet" href="./../css/cadastroOng.css" />
    <title>UmaCausa - CadastroOng</title>
  </head>
<body>
    <form id="form1" runat="server">

        <asp:Literal ID="litHeader" runat="server"></asp:Literal>

        <main>
          <div class="infos-cadastro">
            <div class="titulo-info">
             <p>Dados Pessoais:</p>
            </div>
            <div class="infos">
              <div class="input-label">
                <label for="">Nome:</label>
                  <asp:TextBox ID="txtNome" runat="server" placeholder="ex: Cennin" required="required"></asp:TextBox>
                  <span id="erroNome" class="spanErro"></span>
              </div>
              <div class="input-label">
                <label for="">CNPJ:</label>
                <asp:TextBox ID="txtCnpj" MaxLength="14" runat="server" placeholder="ex: 99.999.999/9999-99" required="required"></asp:TextBox>
                <span id="erroIdentificacao" class="spanErro"></span>
              </div>
              <div class="input-label">
                <label for="">Email:</label>
                <asp:TextBox ID="txtEmail" TextMode="Email" AutoCompleteType="Email" runat="server" placeholder="ex: ex: cennin@gmail.com" required="required"></asp:TextBox>
                <span id="erroEmail" class="spanErro"></span>
              </div>
              <div class="input-label">
                <label for="">Telefone:</label>
                <asp:TextBox ID="txtTelefone" MaxLength="11" AutoCompleteType="Cellular" runat="server" placeholder="ex: 13997845669" required="required"></asp:TextBox>
                <span id="erroTelefone" class="spanErro"></span>
              </div>
                <div class="input-label">
                <label for="">Senha:</label>
                <asp:TextBox ID="txtSenha" TextMode="Password" runat="server" required="required"></asp:TextBox>
                <span id="erroSenha" class="spanErro"></span>
              </div>
                <div class="input-label">
                <label for="">Confirmar a Senha:</label>
                <asp:TextBox ID="txtConfirmarSenha" TextMode="Password" runat="server" required="required"></asp:TextBox>
                <span id="erroConfirmarSenha" class="spanErro"></span>
              </div>
            </div>

            <div class="titulo-info">
              <p>Endereço:</p>
            </div>
            <div class="infos">
             <div class="input-label" id="cep">
                <label for="">CEP:</label>
                <asp:TextBox ID="txtCep" TextMode="Number" runat="server" placeholder="ex: 11538105"></asp:TextBox>
              </div>
              <div class="input-label" id="UF">
                <label for="">UF:</label>
                  <asp:DropDownList ID="txtUF" runat="server">
                      <asp:ListItem value="" Text=""/>
                      <asp:ListItem value="AC" Text="AC"/>
                      <asp:ListItem value="AL" Text="AL"/>
                      <asp:ListItem value="AP" Text="AP"/>
                      <asp:ListItem value="AM" Text="AM"/>
                      <asp:ListItem value="BA" Text="BA"/>
                      <asp:ListItem value="CE" Text="CE"/>
                      <asp:ListItem value="DF" Text="DF"/>
                      <asp:ListItem value="ES" Text="ES"/>
                      <asp:ListItem value="GO" Text="GO"/>
                      <asp:ListItem value="MA" Text="MA"/>
                      <asp:ListItem value="MT" Text="MT"/>
                      <asp:ListItem value="MS" Text="MS"/>
                      <asp:ListItem value="MG" Text="MG"/>
                      <asp:ListItem value="PA" Text="PA"/>
                      <asp:ListItem value="PB" Text="PB"/>
                      <asp:ListItem value="PR" Text="PR"/>
                      <asp:ListItem value="PE" Text="PE"/>
                      <asp:ListItem value="PI" Text="PI"/>
                      <asp:ListItem value="RJ" Text="RJ"/>
                      <asp:ListItem value="RN" Text="RN"/>
                      <asp:ListItem value="RS" Text="RS"/>
                      <asp:ListItem value="RO" Text="RO"/>
                      <asp:ListItem value="RR" Text="RR"/>
                      <asp:ListItem value="SC" Text="SC"/>
                      <asp:ListItem value="SP" Text="SP"/>
                      <asp:ListItem value="SE" Text="SE"/>
                      <asp:ListItem value="TO" Text="TO"/>
                  </asp:DropDownList>
              </div>
              <div class="input-label" id="cidade">
                <label for="">Cidade:</label>
                <asp:TextBox ID="txtCidade" runat="server" placeholder="ex: Santos"></asp:TextBox>
              </div>
              <div class="input-label" id="bairro">
                <label for="">Bairro:</label>
                <asp:TextBox ID="txtBairro" runat="server" placeholder="ex: Rua Alexandre Martins"></asp:TextBox>
              </div>
              <div class="input-label" id="logradouro">
                <label for="">Logradouro:</label>
                <asp:TextBox ID="txtLogradouro" runat="server" placeholder="ex: +55 (13) 997845669"></asp:TextBox>
              </div>
              <div class="input-label" id="numero">
                <label for="">Número:</label>
                <asp:TextBox ID="txtNumero" TextMode="Number" runat="server" placeholder="ex:54"></asp:TextBox>
              </div>
              <div class="input-label" id="complemento">
                <label for="">Complemento:</label>
                <asp:TextBox ID="txtComplemento" runat="server" placeholder="ex:Apt. 14"></asp:TextBox>
              </div>
              <span id="erroEndereco" class="spanErro"></span>
            </div>
        
            <div class="titulo-info">
              <p>Informações Gerais:</p>
            </div>
            <div class="infos">
              <div class="input-label" id="pix">
                <label for="">Pix:</label>
                <div>
                    <asp:DropDownList ID="cmbTiposPix" runat="server">
                        <asp:ListItem Value="telefone">Telefone</asp:ListItem>
                        <asp:ListItem Value="email">Email</asp:ListItem>
                        <asp:ListItem Value="cpf">CPF</asp:ListItem>
                        <asp:ListItem Value="cnpj">CNPJ</asp:ListItem>
                        <asp:ListItem Value="chaveAleatoria">Outro</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="txtPix" TextMode="Phone" MaxLength="11" pattern="^+55\d{11}$" placeholder="13999999999 (somente números)" runat="server" required="required"></asp:TextBox>
                </div>

                <span id="erroPix" class="spanErro"></span>
              </div>
              <div class="input-label">
                <label for="">WebSite:</label>
                  <asp:TextBox ID="txtWebSite" TextMode="Url" runat="server" ></asp:TextBox>
              </div>
              <div class="input-label">
                <label for="">Email de Contato:</label>
                <asp:TextBox ID="txtEmailContato" TextMode="Email" runat="server" required="required"></asp:TextBox>
                <span id="erroEmailContato" class="spanErro"></span>
              </div>
              <div class="input-label" id="bannerOng">
                <label for="">Banner da Ong:</label>
                <div class="espaco-imagem-banner">
                  <label class="custom-file-upload">
                    <asp:FileUpload ID="fileInputBanner"  runat="server" accept="image/*" />
                    <span class="textoInputFile">Carregar Foto</span>
                  </label>
                  <span id="nomeArquivoBanner">Imagem Retangular em JPG</span>
                </div>
              </div>
              <div class="input-label" id="logo">
                <label for="">Logo da Ong:</label>
                <div class="espaco-imagem-logo">
                  <label class="custom-file-upload">
                    <asp:FileUpload ID="fileInputLogo" runat="server" accept="image/*" />
                    <span class="textoInputFile">Carregar Foto</span>
                  </label>
                  <span id="nomeArquivoLogo">Foto quadrada em JPG</span>
                </div>
              </div>
              <div class="input-label" id="dsOng">
                 <label for="">Resumo da Ong:</label>
                 <asp:TextBox ID="txtDescricao" TextMode="MultiLine" Columns="30" Rows="10" runat="server"></asp:TextBox>
                 <span id="erroDescricao" class="spanErro"></span>
              </div>
              <div class="input-label">
                  <label for="">Categorias da Ong:</label>
                  <asp:Panel ID="pnlCategorias" runat="server"></asp:Panel>
                  <asp:Label ID="erroCategorias" CssClass="spanErro" runat="server"></asp:Label>
              </div>
              <div class="input-label">
                  <label for="">Itens Aceitos:</label>
                  <asp:Panel ID="pnlItensAceitos" runat="server"></asp:Panel>
                  <asp:Label ID="erroItensAceitos" CssClass="spanErro" runat="server"></asp:Label>
              </div>

              <div class="input-label">
                  <label for="">Dias Disponíveis:</label>
                  <asp:Panel ID="pnlDiasDisponiveis" runat="server"></asp:Panel>
                  <asp:Label ID="erroDias" CssClass="spanErro" runat="server"></asp:Label>
              </div>
              <div class="pnlCheckBox" style="margin: 20px 0">
                <asp:CheckBox ID="chkConfirmaoBuscaDoacoes" runat="server" />
                <label style="font-size:16px" for="chkConfirmaoBuscaDoacoes">Posso buscar doações</label>
              </div>
            </div>
            
            <asp:Label ID="lblErro" runat="server"></asp:Label>
            <asp:Button class="button-criar" ID="btnCadastrarOng" runat="server" Text="Criar conta de ONG" OnClick="btnCadastrarOng_Click" />
          </div>
        </main>

        <footer>
            <asp:Literal ID="litFooter" runat="server"></asp:Literal>
        </footer>

        <script src="../js/inputsDias.js"></script>
        <script src="./../js/verificacoesInputs.js"></script>
        <script src="./../js/inputFile.js"></script>
        <script src="./../js/selectPersonalizado.js"></script>
        <script src="./../js/cep.js"></script>
    </form>
</body>
</html>
