

function VerificarUsuario(){
    return fetch("./../JsonResponses/VerificarUsuario.aspx")
        .then(function (resposta) {
            return resposta.json();
        }).then(function (dados) {
            if (dados['situacao'] == 'false') {
                return false
            }
            return true;
        });
}