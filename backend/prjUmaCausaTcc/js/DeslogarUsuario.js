const btnSair = document.getElementById('btnSair')
const btnSairNavResponsivo = document.getElementById('btnSairNavResponsivo');

if (btnSair) {
    btnSair.addEventListener('click', function (e) {
        e.preventDefault();

        Deslogar();
    });
}

if (btnSairNavResponsivo) {
    btnSairNavResponsivo.addEventListener('click', function (e) {
        e.preventDefault();

        Deslogar();
    });
}

function Deslogar() {
    fetch("./../JsonResponses/DeslogarUsuario.aspx")
        .then(function (resposta) {
            return resposta.json();
        }).then(function (dados) {
            console.log(dados)
            if (dados['situacao'] == 'true') {
                console.log("ss");
                window.location.href = "index.aspx"
            }
        });
}