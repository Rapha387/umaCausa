


function encerrarCampanha(botao) {
    const campanha = botao.name;

    const formData = new FormData();
    formData.append('campanha', campanha);

    fetch(`http://localhost:50944/JsonResponses/EncerrarCampanha.aspx`, {
        method: 'POST',
        body: formData
    })
        .then(function (resposta) { return resposta.json() })
        .then(function (dados) {
            if (dados['situacao'] == 'true') {
                bloqueio.classList.add("escondido");
                popupConfirmacao.classList.add("escondido");

                const botaoEncerrarCampanha = document.getElementById(campanha);
                botaoEncerrarCampanha.parentNode.textContent = "Finalizada";
            }
            else {
                console.log("nao foi");
            }
        });
}