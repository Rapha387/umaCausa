


if (btnRelizarDoacaoMonetaria) {
    btnRelizarDoacaoMonetaria.onclick = function (event) {
        event.preventDefault();
        VerificarDadosDoacaoMonetaria(event);

        if (txtValor.value == "" || txtComprovante.files.length <= 0) {
            return;
        }

        const formData = new FormData();

        const urlParams = new URLSearchParams(window.location.search);
        const campanha = urlParams.get('c');

        if (txtComprovante.files.length > 0) {
            formData.append('comprovante', txtComprovante.files[0]);
            formData.append('valor', txtValor.value);
            formData.append('campanha', campanha)
        }

        fetch(`./../JsonResponses/DoarMonetarioCampanha.aspx`, {
            method: 'POST',
            body: formData
        })
            .then(function (resposta) { return resposta.json() })
            .then(function (dados) {
                console.log(dados);
                if (dados['situacao'] == 'true') {
                    LimparPopupMonetario();
                    textoRespostaSucessoPopup.textContent = "Doação realizada com sucesso";
                    popupSucesso.classList.remove('escondido');
                }
                else {
                    textoRespostaSucessoPopup.textContent = "Não foi possível realizar a doação. Por favor, tente novamente mais tarde."
                    popupErro.classList.remove('escondido');
                }
            });
    };
}


if (btnAgendarItem) {
    btnAgendarItem.onclick = function (event) {
        console.log("da");
        event.preventDefault();
        VerificarDadosDoacaoItem(event);

        if (txtNomeItem.value == "" || txtHorario.value == "" || cmbTipoEntrega.selectedIndex == 0 || txtQuantidadeItem.value == "" || txtDataEnvio.value == "") {
            return;
        }

        const urlParams = new URLSearchParams(window.location.search);
        const campanha = urlParams.get('c');

        fetch(`http://localhost:50944/JsonResponses/DoarItemCampanha.aspx?c=${campanha}&n=${txtNomeItem.value}&te=${cmbTipoEntrega.options[cmbTipoEntrega.selectedIndex].value}&q=${txtQuantidadeItem.value}&dt=${txtDataEnvio.value}&hr=${txtHorario.value}`)
            .then(function (resposta) { return resposta.json() })
            .then(function (dados) {
                console.log(dados);
                if (dados['situacao'] == 'true') {

                    LimparPopUpItem();
                    textoRespostaSucessoPopup.textContent = "Agendamento realizado com sucesso";
                    popupSucesso.classList.remove('escondido');

                }
                else {
                    LimparPopUpItem();
                    textoRespostaErroPopup.textContent = "Não foi possível realizar o agendamento. Por favor, tente novamente mais tarde."
                    popupErro.classList.remove('escondido');
                }
            });

    }
}   