using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class cadastroDoador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void btnCadastrarDoador_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario usuario = new Usuario();

                string nome = txtNome.Text;

                if (txtSenha.Text != txtConfirmarSenha.Text)
                    return;

                string senha = txtConfirmarSenha.Text;
                string email = txtEmail.Text;
                string telefone = txtTelefone.Text;
                string cpf = txtCpf.Text;
                string cep = txtCep.Text;
                string uf = txtUF.Text;
                string cidade = txtCidade.Text;
                string lougradouto = txtLogadouro.Text;
                string numero = txtNumero.Text;
                string bairro = txtBairro.Text;
                string complemento = txtComplemento.Text;
                string latitude = "";
                string longitude = "";

                string endereco = $"{lougradouto}, {numero}, {cidade}, {uf}";
                string apiKey = "AIzaSyAEQaNYEZ69GfWqaatrh4gUqHCTloZ2nd8";

                // Codifica o endereço para substituir os caracteres especiais
                string encodedAddress = WebUtility.UrlEncode(endereco);

                // Monta a URL da requisição
                string url = $"https://maps.googleapis.com/maps/api/geocode/json?address={encodedAddress}&key={apiKey}";

                // Faz a requisição HTTP
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();

                // Lê a resposta JSON
                using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                {
                    string jsonResponse = reader.ReadToEnd();

                    // Analisa a resposta JSON para obter as coordenadas
                    dynamic result = Newtonsoft.Json.JsonConvert.DeserializeObject(jsonResponse);
                    string status = result.status;

                    if (status == "OK")
                    {
                        latitude = result.results[0].geometry.location.lat;
                        longitude = result.results[0].geometry.location.lng;
                    }
                    else
                    {
                        //erro
                    }
                }

                response.Close();

                //string 
                usuario.CadastrarDoador(nome, senha, email, telefone, cpf, cep, uf, cidade, lougradouto, numero, bairro, complemento, latitude, longitude);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}