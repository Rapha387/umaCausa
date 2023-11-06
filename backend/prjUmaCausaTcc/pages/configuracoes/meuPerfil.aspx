<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="meuPerfil.aspx.cs" Inherits="prjUmaCausaTcc.pages.configuracoes.meuPerfil" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@900&display=swap" rel="stylesheet">
  <link rel="icon" href="./../../images/icone.svg" type="image/x-icon" />
  <link rel="stylesheet" href="./../../css/index.css">
  <link rel="stylesheet" href="./../../css/meuPerfil.css">
  <title>UmaCausa - Meu Perfil</title>
</head>
<body>
    <form id="form1" runat="server">

         <asp:Literal ID="LitHeader" runat="server"></asp:Literal>

      <main>
          <asp:Literal ID="Litmenu" runat="server"></asp:Literal>

          <hr>

        <div class="infos-configuracoes">
          <div class="titulo-info">
            <img src="./../../images/icons/userAzul.png" alt="">
            Meu Perfil
          </div>

          <div class="infos">
            <div class="input-label">
              <label for="">Nome:</label>
              <asp:TextBox ID="txtNome" runat="server" ></asp:TextBox>
            </div>
            <div class="input-label">
              <label for="">CNPJ:</label>
                <asp:TextBox ID="txtCnpj" runat="server" Enabled="false"></asp:TextBox>
            </div>
            <div class="input-label">
              <label for="">Email:</label>
               <asp:TextBox ID="txtEmail" runat="server" Enabled="false" TextMode="Email"></asp:TextBox>
            </div>
            <div class="input-label">
              <label for="">Telefone:</label>
              <asp:TextBox ID="txtTelefone" runat="server" AutoCompleteType="Cellular" maxlength="11"></asp:TextBox>
            </div>
          </div>

          <div class="infos">
                <div class="input-label" id="cep">
                  <label for="">CEP:</label>
                  <asp:TextBox ID="txtCep" runat="server" MaxLength="8" TextMode="Number" placeholder="11538105"></asp:TextBox>
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
                  <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
                </div>
                <div class="input-label" id="bairro">
                  <label for="">Bairro:</label>
                  <asp:TextBox ID="txtBairro" runat="server" MaxLength="45"></asp:TextBox>
                </div>
                <div class="input-label" id="logradouro">
                  <label for="">Logradouro:</label>
                   <asp:TextBox ID="txtLogradouro" runat="server"></asp:TextBox>
                </div>
                <div class="input-label" id="numero">
                  <label for="">Número:</label>
                  <asp:TextBox ID="txtNumero" runat="server" TextMode="Number" MaxLength="5"></asp:TextBox>
                </div>
                <div class="input-label" id="complemento">
                  <label for="">Complemento:</label>
                    <asp:TextBox ID="txtComplemento" runat="server" MaxLength="45"></asp:TextBox>
                </div>
            </div>

            <asp:Panel ID="PnlItensOngs" runat="server">
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
             </asp:Panel>

             <asp:Button ID="BtnSalvarAlteraçoes" runat="server" Text="Salvar Alterações" class="button-salvar" OnClick="BtnSalvarAlteraçoes_Click"/>
          </div>
      </main>


      <footer>
          <asp:Literal ID="LitFooter" runat="server"> </asp:Literal>
      </footer>

        <!--<script src="../../js/inputsDias.js"></script>-->
       <script src="./../../js/animarBtnHeader.js"></script>
       <script src="../../js/verificacoesInputs.js"></script>
       <script src="./../../js/inputFile.js"></script>
       <script src="./../../js/DeslogarUsuario.js"></script>
    </form>
</body>
</html>
