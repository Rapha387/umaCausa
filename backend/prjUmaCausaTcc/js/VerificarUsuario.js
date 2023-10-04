

function VerificarUsuario(){
    fetch("./../JsonResponses/VerificarUsuario.aspx")
        .then(function (resposta) {
            return resposta.json();
        }).then(function (dados) {
            if (dados['situacao'] == 'false') {
                window.location.href = "login.aspx";
                return;
            }
        });
}