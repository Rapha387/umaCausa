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
            Usuario usuario = new Usuario() { Codigo = 1 };
            Campanha campanha = new Campanha();
            TipoItem tipo = new TipoItem() { Codigo = 1};
            DiaUsuario diaUsuario = new DiaUsuario();
            Dia dia = new Dia() { Codigo = 1};
            CategoriaCampanha categoria= new CategoriaCampanha() { Codigo = 1};

            DateTime datainicio = DateTime.UtcNow;
            DateTime datafim = DateTime.MaxValue;

            Literal1.Text = diaUsuario.CadastrarDiaUsuario(usuario,dia,datainicio,datafim).ToString();

            // Sucesso

            //Literal1.Text = campanha.CriarCampanha("Campanha Solidaria", "Vamos dar sopa", datainicio, datafim, 23, null, usuario, categoria, tipo).ToString();
            Literal1.Text = usuario.CadastrarDoador("Igary Doacoes","123","igary@gmail.com","(13) 9975-6473","948.956.094-09", "11538030","SP","Cubatão","R. dos Girassois", "340", "Vila Natal", "Casa", null,null).ToString();
            //Literal1.Text = usuario.CadastrarOng("Igary Doacoes", "123", "igary@gmail.com", "(13) 9975-6473", "948.956.094-09", "11538030", "SP", "Cubatão", "R. dos Girassois", "340", "Vila Natal", "Casa", null, null,"website.com/ooioioi.jpg", "website.com", "website.com/banner.jpg","(13)99753-2875","doações","igaryContato@gmail.com").ToString();

        }
    }
}