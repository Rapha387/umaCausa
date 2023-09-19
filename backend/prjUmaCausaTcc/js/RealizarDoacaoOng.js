



if (btnRelizarDoacaoMonetaria) {
    btnRelizarDoacaoMonetaria.onclick = function (event) {
        event.preventDefault();
        VerificarDadosDoacaoMonetaria(event);
        const urlParams = new URLSearchParams(window.location.search);
        const ong = urlParams.get('ong');

        fetch(`http://localhost:50944/JsonResponses/DoarMonetarioOng.aspx?o=${ong}&v=${txtValor.value}`)
        .then(function (resposta) { return resposta.json() })
        .then(function (dados) {
            console.log(dados);
            if (dados['situacao'] == 'true') {
                const formData = new FormData();

                if (txtComprovante.files.length > 0) {
                    formData.append('imagem', fileInput.files[0]);

                    fetch('/comprovante1', {
                        method: 'POST',
                        body: formData
                    })
                }

                alert("Doação realizada!");
            }
            else {
                alert('Erro na doação');
            }
        });

    };
}
