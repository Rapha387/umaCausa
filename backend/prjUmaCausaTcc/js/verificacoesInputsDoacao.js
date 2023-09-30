

const txtNomeItem = document.getElementById("txtNomeItem");
const cmbTipoItem = document.getElementById("cmbTipoItem");
const txtQuantidadeItem = document.getElementById("txtQuantidadeItem");
const cmbTipoEntrega = document.getElementById("cmbTipoEntrega");
const txtDataEnvio = document.getElementById("txtDataEnvio");
const txtHorario = document.getElementById("txtHorario");
const btnAgendarItem = document.getElementById("btnAgendarItem");

const txtValor = document.getElementById("txtValor");
const txtComprovante = document.getElementById("txtComprovante");
const btnRelizarDoacaoMonetaria = document.getElementById("btnRelizarDoacaoMonetaria");
const btnGerarPix = document.getElementById("btnGerarPix");



function VerificarDadosDoacaoItem(event) {
    LimparInputsItem();

    if (txtNomeItem.value == "") {
        txtNomeItem.classList.add('inputInvalido');
        event.preventDefault();
        erroNomeItem.textContent = "Preencha o nome do item"
    }
    if (cmbTipoItem.selectedIndex == 0) {
        cmbTipoItem.classList.add('inputInvalido');
        event.preventDefault();
        erroTipoItem.textContent = "Selecione o tipo do item"
    }
    if (txtQuantidadeItem.value == "") {
        txtQuantidadeItem.classList.add('inputInvalido');
        event.preventDefault();
        erroQuantidadeItem.textContent = "Indique a quantidade de itens"
    }
    if (cmbTipoEntrega.selectedIndex == 0) {
        cmbTipoEntrega.classList.add('inputInvalido');
        event.preventDefault();
        erroTipoEntrega.textContent = "Selecione o tipo da entrega"
    }
    if (txtHorario.value == "") {
        txtHorario.classList.add('inputInvalido');
        event.preventDefault();
        erroHorario.textContent = "Informe o horário desejado"
    }
    if (txtDataEnvio.value == "") {
        txtDataEnvio.classList.add('inputInvalido');
        event.preventDefault();
        erroDataEnvio.textContent = "Informe a data desejada"
    }
}

function VerificarDadosDoacaoMonetaria(event) {
    LimparInputsMonetario();

    if (txtValor.value == "") {
        txtValor.classList.add('inputInvalido');
        event.preventDefault();
        erroDoacaoMonetaria.textContent = "O valor não pode estar vazio"
    }
    if (txtComprovante.files.length <= 0) {
        txtComprovante.classList.add('inputInvalido');
        event.preventDefault();
        erroDoacaoMonetaria.textContent = "O comprovante de pagamento precisa ser anexado"
    }
}


function LimparInputsMonetario() {
    txtValor.classList.remove('inputInvalido');
    txtComprovante.classList.remove('inputInvalido');
    erroDoacaoMonetaria.textContent = "";

}

function LimparInputsItem() {
    txtNomeItem.classList.remove('inputInvalido');
    cmbTipoItem.classList.remove('inputInvalido');
    txtQuantidadeItem.classList.remove('inputInvalido');
    cmbTipoEntrega.classList.remove('inputInvalido');
    txtHorario.classList.remove('inputInvalido');
    txtDataEnvio.classList.remove('inputInvalido');
    erroNomeItem.textContent = ""
    erroTipoItem.textContent = ""
    erroQuantidadeItem.textContent = ""
    erroTipoEntrega.textContent = ""
    erroHorario.textContent = ""
    erroDataEnvio.textContent = ""
}


