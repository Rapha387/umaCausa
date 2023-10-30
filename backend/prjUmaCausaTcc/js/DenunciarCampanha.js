


if (btnRealizarDenunciaCampanha) {
    btnRealizarDenunciaCampanha.addEventListener('click', function (e) {
        e.preventDefault();

        if (cmbMotivoDenuncia.selectedIndex == 0) {
            cmbMotivoDenuncia.classList.add('inputInvalido');
            erroDenuncia.textContent = "Selecione o motivo da denuncia"
            return;
        }

        const urlParams = new URLSearchParams(window.location.search);

        const denunciado = urlParams.get('c');

        const formData = new FormData();

        formData.append('motivoDenuncia', cmbMotivoDenuncia.options[cmbMotivoDenuncia.selectedIndex].value);
        formData.append('dsDenuncia', txtDescricaoDenuncia.value);
        formData.append('denunciado', denunciado)

        console.log(cmbMotivoDenuncia.options[cmbMotivoDenuncia.selectedIndex].value + " " + txtDescricaoDenuncia.value + " " + denunciado)

        fetch(`./../JsonResponses/DenunciarCampanha.aspx`, {
            method: 'POST',
            body: formData
        }).then(function (resposta) { return resposta.json() })
            .then(function (dados) {
                console.log(dados);
                if (dados['situacao'] == 'true') {

                    LimparPopUpDenuncia();
                    alert("Denuncia Realizada!");
                }
                else {
                    alert('Erro na Denuncia');
                }
            });
    })
}