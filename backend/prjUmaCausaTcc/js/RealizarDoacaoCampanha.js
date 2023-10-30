


if (btnRelizarDoacaoMonetaria) {
    btnRelizarDoacaoMonetaria.onclick = function (event) {
        event.preventDefault();
        VerificarDadosDoacaoMonetaria(event);

        if (txtValor.value == "" || txtComprovante.files.length <= 0) {
            return;
        }

        const formData = new FormData();

        if (txtComprovante.files.length > 0) {
            formData.append('comprovante', txtComprovante.files[0]);
            formData.append('valor', txtValor.value);
            formData.append('ong', ong)
        }

        fetch(`./../JsonResponses/DoarMonetarioOng.aspx`, {
            method: 'POST',
            body: formData
        })
            .then(function (resposta) { return resposta.json() })
            .then(function (dados) {
                console.log(dados);
                if (dados['situacao'] == 'true') {
                    LimparPopupMonetario();
                    bloqueio.classList.add('escondido');

                    alert("Doação Realizada com Sucesso!");
                }
                else {
                    alert('Erro na doação');
                }
            });
    };
}
}