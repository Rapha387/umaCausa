const btnSair = document.getElementById('btnSair')

if (btnSair) {
    btnSair.addEventListener('click', function (e) {
        e.preventDefault();

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
    });
}