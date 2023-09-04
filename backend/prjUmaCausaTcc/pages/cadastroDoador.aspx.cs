using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class cadastroDoador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                Usuario usuario = new Usuario();
                // usuario.CadastrarDoador("Igary Doacoes", "123", "igary@gmail.com", "(13) 9975-6473", "948.956.094-09", "11538030", "SP", "Cubatão", "R. dos Girassois", "340", "Vila Natal", "Casa", null, null).ToString();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}