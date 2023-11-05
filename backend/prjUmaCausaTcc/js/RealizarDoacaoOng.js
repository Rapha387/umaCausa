﻿
const urlParams = new URLSearchParams(window.location.search);
const ong = urlParams.get('ong');


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

        if (txtNomeItem.value == "" || txtHorario.value == "" || cmbTipoEntrega.selectedIndex == 0 || cmbTipoItem.selectedIndex == 0 || txtQuantidadeItem.value == "" || txtDataEnvio.value == "") {
            return;
        }

        fetch(`http://localhost:50944/JsonResponses/DoarItemOng.aspx?o=${ong}&n=${txtNomeItem.value}&te=${cmbTipoEntrega.options[cmbTipoEntrega.selectedIndex].value}&ti=${cmbTipoItem.options[cmbTipoItem.selectedIndex].value}&q=${txtQuantidadeItem.value}&dt=${txtDataEnvio.value}&hr=${txtHorario.value}`)
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