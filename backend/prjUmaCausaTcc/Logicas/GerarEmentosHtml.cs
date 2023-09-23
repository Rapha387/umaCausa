using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

    public class GerarEmentosHtml
    {
        public string MudarNavegacao(bool logado, int tipoUsuario)
        {
            if (!logado)
            {
                string nav = $@"
                    <a href='./index.aspx'><img class='logo-header' src='./../images/logo/logoAzul.svg' alt='logo' /></a>
                    <ul>
                        <li><a href='./ongs.aspx'>Ongs</a></li>
                        <li><a href='./campanhas.aspx'>Campanhas</a></li>
                        <li><a href='./login.aspx'>Login</a></li>
                        <li><a class='button-header-cadastro' href='./cadastro.aspx'><img src='./../images/icons/user.png'/>Cadastre-se</a></li>
                    </ul>";

                return nav;
            }

            if (tipoUsuario == 1)
            {
                string nav = $@"
                    <a href='./index.aspx'><img class='logo-header' src='./../images/logo/logoAzul.svg' alt='logo' /></a>
                    <ul>
                        <li><a href='./ongs.aspx'>Ongs</a></li>
                        <li><a href='./campanhas.aspx'>Campanhas</a></li>
                        <li><a href='./itens.aspx'>Doações Disponiveis</a></li>
                        <li><label for='menuConfig'><img class='img-user-preto' src=../images/icons/userPreto.png /></label></li>
                        <input type='checkbox' class='escondido'name='menuConfig' id='menuConfig'>
                    </ul>
                    <div class='menu-configuracoes'>
                        <ul>
                          <li><a href='configuracoes/meuPerfil.html'>Meu Perfil</a></li>
                          <li><a href='configuracoes/minhasColaboracoes.html'>Minhas Colaborações</a></li>
                          <li><a href='configuracoes/minhasCampanhas.html'>Minhas Campanhas</a></li>
                          <li><a href='configuracoes/meusItens.html'>Meus Itens</a></li>
                          <li><a href='configuracoes/confirmacoesDoacoes.html'>Confirmações de Doações</a></li>
                          <li id='btnSair'>Sair</li>
                        </ul>
                    </div>";

                return nav;
            }
            else
            {
                string nav = $@"
                    <a href='./index.aspx'><img class='logo-header' src='./../images/logo/logoAzul.svg' alt='logo' /></a>
                    <ul>
                        <li><a href='./ongs.aspx'>Ongs</a></li>
                        <li><a href='./campanhas.aspx'>Campanhas</a></li>
                        <li><label for='menuConfig'><img class='img-user-preto' src=../images/icons/userPreto.png /></label></li>
                    </ul>
                    <input type='checkbox' class='escondido'name='menuConfig' id='menuConfig'>
                    <div class='menu-configuracoes'>
                        <ul>
                          <li><a href='configuracoes/meuPerfil.html'>Meu Perfil</a></li>
                          <li><a href='configuracoes/minhasColaboracoes.html'>Minhas Colaborações</a></li>
                          <li><a href='configuracoes/meusItens.html'>Meus Itens</a></li>
                          <li><a href='configuracoes/confirmacoesDoacoes.html'>Confirmações de Doações</a></li>
                          <li id='btnSair'>Sair</li>
                        </ul>
                    </div>";

                return nav;
            }
        }

        public string GerarFooter()
        {
            string footer = $@"
                        <nav>
                          <a href='./index.html'><img class='logo-footer' src='./../images/logo/logoBranco.svg' alt='logo umaCausa' /></a>
                          <div>
                            <h3>Inicio</h3>
                            <p><a href='./index.aspx'>Home</a></p>
                            <p><a href='./campanhas.aspx'>Campanhas</a></p>
                            <p><a href='./ongs.aspx'>ONGs</a></p>
                          </div>
                          <div>
                            <h3>Sobre Nós</h3>
                            <p><a href='./sobre.aspx'>Sobre</a></p>
                            <p><a href='./nossaEquipe.aspx'>Nossa Equipe</a></p>
                          </div>
                          <div>
                            <h3>Suporte</h3>
                            <p><a href='./faq.aspx'>FAQ</a></p>
                          </div>
                        </nav>";
            return footer;
        }
    }
