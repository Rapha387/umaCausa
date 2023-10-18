using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class GerarEmentosHtml
{
    public string MudarNavegacao(Usuario usuario)
    {
        if (usuario == null)
        {
            string nav = $@"
                    <header>
                        <nav>
                            <a href='./index.aspx'><img class='logo-header' src='./../images/logo/logoAzul.svg' alt='logo' /></a>
                            <ul>
                                <li><a href='./ongs.aspx'>Ongs</a></li>
                                <li><a href='./campanhas.aspx'>Campanhas</a></li>
                                <li><a href='./login.aspx'>Login</a></li>
                                <li><a class='button-header-cadastro' href='./cadastro.aspx'><img src='./../images/icons/user.png'/>Cadastre-se</a></li>
                                <label for='chkMenuHeader' id='btnMenuHeader'>
                                  <span class='linha'></span>
                                  <span class='linha'></span>
                                  <span class='linha'></span>
                                </label>
                            </ul>
                        </nav>
                    </header>
                    <input type='checkbox' class='escondido' id='chkMenuHeader'>
                    <div class='navHeaderResponsivo'>
                        <div class='divisaoNavResposivo'>
                          <h3>Páginas</h3>
                          <a href='./ongs.aspx'><li>Ongs</li></a>
                          <a href='./campanhas.aspx'><li>Campanhas</li></a>
                        </div>
                    </div>";

            return nav;
        }

        if (usuario.TipoDoUsuario.Codigo == 1)
        {
            string nav = $@"
                    <header>
                        <nav>
                            <a href='./index.aspx'><img class='logo-header' src='./../images/logo/logoAzul.svg' alt='logo' /></a>
                            <ul>
                                <li><a href='./ongs.aspx'>Ongs</a></li>
                                <li><a href='./campanhas.aspx'>Campanhas</a></li>
                                <li><label for='menuConfig' class='btnMenuHeader'><img class='img-user-preto' src=../images/icons/userPreto.png /><span>{usuario.Nome}</span></label></li>
                                <label for='chkMenuHeader' id='btnMenuHeader'>
                                    <span class='linha'></span>
                                    <span class='linha'></span>
                                    <span class='linha'></span>
                                </label>
                            </ul>
                            <input type='checkbox' class='escondido'name='menuConfig' id='menuConfig'>
                            <div class='menu-configuracoes'>
                                <ul>
                                  <a href='configuracoes/meuPerfil.aspx'><li>Meu Perfil</li></a>
                                  <a href='configuracoes/minhasColaboracoes.aspx'><li>Minhas Colaborações</li></a>
                                  <a href='configuracoes/minhasCampanhas.aspx'><li>Minhas Campanhas</li></a>
                                  <a href='configuracoes/confirmacoesDoacoes.aspx'><li>Confirmações de Doações</li></a>
                                  <li id='btnSair'>Sair</li>
                                </ul>
                            </div>
                        </nav>
                    </header>
                    <input type='checkbox' class='escondido' id='chkMenuHeader'>
                    <div class='navHeaderResponsivo'>
                        <div class='divisaoNavResposivo'>
                          <h3>Páginas</h3>
                          <li><a href='./ongs.aspx'>Ongs</a></li>
                          <li><a href='./campanhas.aspx'>Campanhas</a></li>
                        </div>
                        <div class='divisaoNavResposivo'>
                          <h3>Minhas Informações</h3>
                          <li><a href='./configuracoes/meuPerfil.aspx'>Meu Perfil</a></li>
                          <li><a href='./configuracoes/meusItens.aspx'>Minhas Campanhas</a></li>
                          <li><a href='./configuracoes/minhasColaboracoes.aspx'>Minhas Colaborações</a></li>
                        </div>
                        <li class='btnSairNavResponsivo' id='btnSairNavResponsivo'>Sair</li>
                    </div>";

            return nav;
        }
        else
        {
            string nav = $@"
                    <header>
                        <nav>
                            <a href='./index.aspx'><img class='logo-header' src='./../images/logo/logoAzul.svg' alt='logo' /></a>
                            <ul>
                                <li><a href='./ongs.aspx'>Ongs</a></li>
                                <li><a href='./campanhas.aspx'>Campanhas</a></li>
                                <li><label for='menuConfig' class='btnMenuHeader'><img class='img-user-preto' src=../images/icons/userPreto.png /><span>{usuario.Nome}</span></label></li>
                                <label for='chkMenuHeader' id='btnMenuHeader'>
                                    <span class='linha'></span>
                                    <span class='linha'></span>
                                    <span class='linha'></span>
                                </label>
                            </ul>
                            <input type='checkbox' class='escondido'name='menuConfig' id='menuConfig'>
                            <div class='menu-configuracoes'>
                                <ul>
                                  <a href='configuracoes/meuPerfil.aspx'><li>Meu Perfil</a></li>
                                  <a href='configuracoes/minhasColaboracoes.aspx'><li>Minhas Colaborações</a></li>
                                  <li id='btnSair'>Sair</li>
                                </ul>
                            </div>
                        </nav>
                    </header>
                    <input type='checkbox' class='escondido' id='chkMenuHeader'>
                    <div class='navHeaderResponsivo'>
                        <div class='divisaoNavResposivo'>
                          <h3>Páginas</h3>
                          <li><a href='./ongs.aspx'>Ongs</a></li>
                          <li><a href='./campanhas.aspx'>Campanhas</a></li>
                        </div>
                        <div class='divisaoNavResposivo'>
                          <h3>Minhas Informações</h3>
                          <li><a href='./configuracoes/meuPerfil.aspx'>Meu Perfil</a></li>
                          <li><a href='./configuracoes/meusItens.aspx'>Minhas Campanhas</a></li>
                          <li><a href='./configuracoes/minhasColaboracoes.aspx'>Minhas Colaborações</a></li>
                          <li><a href='configuracoes/confirmacoesDoacoes.aspx'>Confirmações de Doações</a></li>
                        </div>
                        <li class='btnSairNavResponsivo' id='btnSairNavResponsivo'>Sair</li>
                    </div>";

            return nav;
        }
    }

    public string GerarHeaderConfiguracoes(Usuario usuario)
    {
        if (usuario == null)
            return "";

        if (usuario.TipoDoUsuario.Codigo == 1)
        {
            string nav = $@"
                    <header>
                        <nav>
                            <a href='./../index.aspx'><img class='logo-header' src='./../../images/logo/logoAzul.svg' alt='logo' /></a>
                            <ul>
                                <li><a href='./../ongs.aspx'>Ongs</a></li>
                                <li><a href='./../campanhas.aspx'>Campanhas</a></li>
                                <li><label for='menuConfig' class='btnMenuHeader'><img class='img-user-preto' src=./../../images/icons/userPreto.png /><span>{usuario.Nome}</span></label></li>
                                <label for='chkMenuHeader' id='btnMenuHeader'>
                                    <span class='linha'></span>
                                    <span class='linha'></span>
                                    <span class='linha'></span>
                                </label>
                            </ul>
                            <input type='checkbox' class='escondido'name='menuConfig' id='menuConfig'>
                            <div class='menu-configuracoes'>
                                <ul>
                                  <a href='./meuPerfil.aspx'><li>Meu Perfil</li></a>
                                  <a href='./minhasColaboracoes.aspx'><li>Minhas Colaborações</li></a>
                                  <a href='./minhasCampanhas.aspx'><li>Minhas Campanhas</li></a>
                                  <a href='./confirmacoesDoacoes.aspx'><li>Confirmações de Doações</li></a>
                                  <li id='btnSair'>Sair</li>
                                </ul>
                            </div>
                        </nav>
                    </header>
                    <input type='checkbox' class='escondido' id='chkMenuHeader'>
                    <div class='navHeaderResponsivo'>
                        <div class='divisaoNavResposivo'>
                          <h3>Páginas</h3>
                          <li><a href='./../ongs.aspx'>Ongs</a></li>
                          <li><a href='./../campanhas.aspx'>Campanhas</a></li>
                        </div>
                        <div class='divisaoNavResposivo'>
                          <h3>Minhas Informações</h3>
                          <li><a href='./meuPerfil.aspx'>Meu Perfil</a></li>
                          <li><a href='./meusItens.aspx'>Minhas Campanhas</a></li>
                          <li><a href='./minhasColaboracoes.aspx'>Minhas Colaborações</a></li>
                        </div>
                        <li class='btnSairNavResponsivo' id='btnSairNavResponsivo'>Sair</li>
                    </div>";

            return nav;
        }
        else
        {
            string nav = $@"
                    <header>
                        <nav>
                            <a href='./../index.aspx'><img class='logo-header' src='./../../images/logo/logoAzul.svg' alt='logo' /></a>
                            <ul>
                                <li><a href='./../ongs.aspx'>Ongs</a></li>
                                <li><a href='./../campanhas.aspx'>Campanhas</a></li>
                                <li><label for='menuConfig' class='btnMenuHeader'><img class='img-user-preto' src=./../../images/icons/userPreto.png /><span>{usuario.Nome}</span></label></li>
                                <label for='chkMenuHeader' id='btnMenuHeader'>
                                    <span class='linha'></span>
                                    <span class='linha'></span>
                                    <span class='linha'></span>
                                </label>
                            </ul>
                            <input type='checkbox' class='escondido'name='menuConfig' id='menuConfig'>
                            <div class='menu-configuracoes'>
                                <ul>
                                  <a href='./meuPerfil.aspx'><li>Meu Perfil</a></li>
                                  <a href='./minhasColaboracoes.aspx'><li>Minhas Colaborações</a></li>
                                  <li id='btnSair'>Sair</li>
                                </ul>
                            </div>
                        </nav>
                    </header>
                    <input type='checkbox' class='escondido' id='chkMenuHeader'>
                    <div class='navHeaderResponsivo'>
                        <div class='divisaoNavResposivo'>
                          <h3>Páginas</h3>
                          <li><a href='./../ongs.aspx'>Ongs</a></li>
                          <li><a href='./../campanhas.aspx'>Campanhas</a></li>
                        </div>
                        <div class='divisaoNavResposivo'>
                          <h3>Minhas Informações</h3>
                          <li><a href='./meuPerfil.aspx'>Meu Perfil</a></li>
                          <li><a href='./meusItens.aspx'>Minhas Campanhas</a></li>
                          <li><a href='./minhasColaboracoes.aspx'>Minhas Colaborações</a></li>
                          <li><a href='./confirmacoesDoacoes.aspx'>Confirmações de Doações</a></li>
                        </div>
                        <li class='btnSairNavResponsivo' id='btnSairNavResponsivo'>Sair</li>
                    </div>";

            return nav;
        }
    }

    public string GerarFooter()
    {
        string footer = $@"
                        <nav>
                          <a class='aImg' href='./index.html'><img class='logo-footer' src='./../images/logo/logoBranco.svg' alt='logo umaCausa' /></a>
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
    public string GerarMenu(Usuario usuario) {

        if (usuario.TipoDoUsuario.Codigo == 0)
        {
            string nav = $@"
                        <nav>
        <ul>
          <li>
            <a href='./meuPerfil.aspx'>
               <img src = './../../images/icons/userAzul.png' alt = '' />
                  Meu Perfil
                </a>
    
              </li>
    
              <li>
    
                <a href = './minhasColaboracoes.aspx'>
     
                   <img src = './../../images/icons/maos.png' alt = '' />
                      Minhas Colaborações
                    </a>
        
                  </li>
                   <li>
                                <a href = './alterarSenha.aspx'>
                     
                                   <img src = './../../images/icons/cadeado.png' alt = '' />
                                      Alterar Senha
                                    </a>
                        
                                  </li>
                        
                                </ul>
                        
                              </nav>";
            return nav;
        }
        else
        {
            string nav = $@"
                <nav>
        <ul>
          <li>
            <a href = './meuPerfil.aspx'>
 
               <img src = './../../images/icons/userAzul.png' alt = '' />
                  Meu Perfil
                </a>
    
              </li>
    
              <li>
    
                <a href = './minhasColaboracoes.aspx'>
     
                   <img src = './../../images/icons/maos.png' alt = '' />
                      Minhas Colaborações
                    </a>
        
                  </li>
                  <li>
            
                        <a href = './confirmacoesDoacoes.aspx'>
             
                           <img src = './../../images/icons/confirmacao.png' alt = '' />
                              Confirmações de Doações
                            </a>
                
                          </li>
                
                          <li>
                
                            <a href = './minhasCampanhas.aspx'>
                 
                               <img src = './../../images/icons/megafone.png' alt = '' />
                                  Minhas Campanhas
                                </a>
                    
                              </li>
                    
                              <li>
                    
                                <a href = './alterarSenha.aspx'>
                     
                                   <img src = './../../images/icons/cadeado.png' alt = '' />
                                      Alterar Senha
                                    </a>
                        
                                  </li>
                        
                                </ul>
                        
                              </nav>";
            return nav;
        }
    }

    

    public string GerarFooterConfiguracoes()
    {
        string footer = $@"
                        <nav>
                          <a class='aImg' href='./../index.html'><img class='logo-footer' src='./../../images/logo/logoBranco.svg' alt='logo umaCausa' /></a>
                          <div>
                            <h3>Inicio</h3>
                            <p><a href='./../index.aspx'>Home</a></p>
                            <p><a href='./../campanhas.aspx'>Campanhas</a></p>
                            <p><a href='./../ongs.aspx'>ONGs</a></p>
                          </div>
                          <div>
                            <h3>Sobre Nós</h3>
                            <p><a href='./../sobre.aspx'>Sobre</a></p>
                            <p><a href='./../nossaEquipe.aspx'>Nossa Equipe</a></p>
                          </div>
                          <div>
                            <h3>Suporte</h3>
                            <p><a href='./../faq.aspx'>FAQ</a></p>
                          </div>
                        </nav>";
        return footer;
    }
}
