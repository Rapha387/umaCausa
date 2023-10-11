using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using prjUmaCausaTcc.Logicas;

namespace prjUmaCausaTcc.pages.configuracoes
{
    public partial class confirmacoesDoacoes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GerarEmentosHtml gerarElementosHtml = new GerarEmentosHtml();
            Usuario usuario = (Usuario)Session["usuario"];
            string nav = gerarElementosHtml.MudarNavegacao(true, 1);
            string footer = gerarElementosHtml.GerarFooter();
            string menu = gerarElementosHtml.GerarMenu(usuario);
            Footer.Text = footer;
            Navegacao.Text = nav;
            Menu.Text = menu;
            Colaboracoes colaboracoes = new Colaboracoes();
            int codigo = usuario.Codigo;
            foreach (DoacaoCampanha doacao in colaboracoes.ListarDoacoesCampanhaNaoConfirmadas(codigo))
            {  
                Confirmacoes.Text += $@"<div class='confirmacao'>
              < div class='infos-confirmacao'>
                <p>Doador: {doacao.Doador.Nome}</p>
                <p>Valor: R${doacao.QuantidadeDoado}</p>
                <p>Data: {doacao.DataDoacao} - Horário: HH:mm</p>
              </div>
              <div class='botoes-confirmacao'>
                <img src = './../../images/icons/confirmado.png' alt=''>
                <img src = './../../images/icons/recusar.png' alt=''>
              </div>
            </div>";
            }
        }
    }
}