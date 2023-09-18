



if (btnRelizarDoacaoMonetaria) {
    btnRelizarDoacaoMonetaria.onclick = function (event) {
        event.preventDefault();
        VerificarDadosDoacaoMonetaria(event);
        const urlParams = new URLSearchParams(window.location.search);
        const ong = urlParams.get('ong');

        fetch(`http://localhost:50944/JsonResponses/DoarMonetarioOng.aspx?o=${ong}&v=10`)
        .then(function (resposta) { return resposta.json() })
        .then(function (dados) {
            console.log(dados);
            if (dados['situacao'] == 'true') {
                alert("Doação realizada!");
            }
            else {
                alert('Erro na doação');
            }
        });

    };
}
