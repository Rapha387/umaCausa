


if (btnRealizarDenunciaUsuario) {
    btnRealizarDenunciaUsuario.addEventListener('click', function(e) {
        e.preventDefault();

        if (txtDescricaoDenuncia.value == '' || cmbMotivoDenuncia.selectedIndex == 0) {
            return;
        }

        const denunciado = urlParams.get('ong');

        const formData = new FormData();

        formData.append('motivoDenuncia', cmbMotivoDenuncia.options[cmbMotivoDenuncia.selectedIndex].value);
        formData.append('dsDenuncia', txtDescricaoDenuncia.value);
        formData.append('denunciado', denunciado)

        console.log(cmbMotivoDenuncia.options[cmbMotivoDenuncia.selectedIndex].value + " " + txtDescricaoDenuncia.value + " " + denunciado)

        fetch(`./../JsonResponses/DenunciarUsuario.aspx`, {
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