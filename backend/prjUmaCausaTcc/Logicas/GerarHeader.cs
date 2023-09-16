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
                        <li><img class='img-user-preto' src=../images/icons/userPreto.png></li>
                    </ul>";

                return nav;
            }
            else
            {
                string nav = $@"
                    <ul>
                        <li><a href='./ongs.aspx'>Ongs</a></li>
                        <li><a href='./campanhas.apx'>Campanhas</a></li>
                        <li><img src=../images/icons/userPreto.png></li>
                    </ul>";

                return nav;
            }
        }
    }
}