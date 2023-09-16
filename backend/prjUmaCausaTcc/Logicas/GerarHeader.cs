using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjUmaCausaTcc.Logicas
{
    public class GerarHeader
    {
        public string MudarNavegacao(bool logado, int tipoUsuario)
        {
            if (!logado)
            {
                string nav = $@"
                    <ul>
                        <li><a href='./ongs.aspx'>Ongs</a></li>
                        <li><a href='./campanhas.aspx'>Campanhas</a></li>
                        <li><a href='./login.aspx'>Login</a></li>
                        <li><a href='./cadastro.aspx'><button><img src='./../images/icons/user.png' />Cadastre-se</button></a></li>
                    </ul>";

                return nav;
            }

            if (tipoUsuario == 1)
            {
                string nav = $@"
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
                          <li>Sair</li>
                        </ul>
                    </div>";

                return nav;
            }
            else
            {
                string nav = $@"
                    <ul>
                        <li><a href='./ongs.aspx'>Ongs</a></li>
                        <li><a href='./campanhas.apx'>Campanhas</a></li>
                        <li><label for='menuConfig'><img class='img-user-preto' src=../images/icons/userPreto.png /></label></li>
                    </ul>
                    <input type='checkbox' class='escondido'name='menuConfig' id='menuConfig'>
                    <div class='menu-configuracoes'>
                        <ul>
                          <li><a href='configuracoes/meuPerfil.html'>Meu Perfil</a></li>
                          <li><a href='configuracoes/minhasColaboracoes.html'>Minhas Colaborações</a></li>
                          <li><a href='configuracoes/meusItens.html'>Meus Itens</a></li>
                          <li><a href='configuracoes/confirmacoesDoacoes.html'>Confirmações de Doações</a></li>
                          <li>Sair</li>
                        </ul>
                    </div>";

                return nav;
            }
        }
    }
}