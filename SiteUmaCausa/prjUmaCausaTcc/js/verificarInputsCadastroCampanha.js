
const txtNome = document.getElementById('txtNome');
const ddlTipoCampanha = document.getElementById('ddlTipoCampanha');
const txtQuantidade = document.getElementById('txtQuantidade');
const txtDia = document.getElementById('txtDia');
const txtDescricao = document.getElementById('txtDescricao');
const btnCriarCampanha = document.getElementById('btnCriarCampanha');


if (btnCriarCampanha) {
    btnCriarCampanha.onclick = function (event) {
        verificarDadosCampanha(event);
    }
}

function verificarDadosCampanha(event) {
    limparErrosCampanha();

    if (txtNome.value == "") {
        event.preventDefault();
        erroNomeCampanha.textContent = "O nome da campanha não pode estar vazio";
    }
    if (txtQuantidade.value == ""){
        event.preventDefault();
        erroQuantidade.textContent = "A quantidade não pode estar vazia";
    }
    if (txtDescricao.value == "") {
        event.preventDefault();
        erroDescricao.textContent = "A descrição não pode estar vazia";
    }
    if (txtDia.value == "") {
        event.preventDefault();
        erroDia.textContent = "Selecione o dia de encerramento da campanha";
    }
}

function limparErrosCampanha() {
    erroNomeCampanha.textContent = "";
    erroTipoCampanha.textContent = "";
    erroTipoCampanha.textContent = "";
    erroDescricao.textContent = "";
    erroDia.textContent = "";
}

