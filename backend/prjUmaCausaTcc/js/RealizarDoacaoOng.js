
const urlParams = new URLSearchParams(window.location.search);
const ong = urlParams.get('ong');


if (btnRelizarDoacaoMonetaria) {
    btnRelizarDoacaoMonetaria.onclick = function (event) {
        event.preventDefault();
        VerificarDadosDoacaoMonetaria(event);

        if (txtValor.value == "" || txtComprovante.files.length <= 0) {
            return;
        }

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


if (btnAgendarItem) {
    btnAgendarItem.onclick = function (event) {
        event.preventDefault();
        VerificarDadosDoacaoItem(event);

        fetch(`http://localhost:50944/JsonResponses/DoarItemOng.aspx?o=${ong}&v=${txtValor.value}`)
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

    }
}   