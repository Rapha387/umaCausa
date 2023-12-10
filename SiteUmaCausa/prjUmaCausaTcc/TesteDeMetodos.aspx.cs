using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc
{
    public partial class TesteDeMetodos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Doacoes> doacoes = new Doacoes().ListarDoacoesNaoConfirmadas(83);
            foreach (Doacoes doacao in doacoes)
            {
                Literal1.Text += "<br/>" + doacao.DataDoacao;

            }
        }
    }
}