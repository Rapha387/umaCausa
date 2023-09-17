﻿const txtNome = document.getElementById('txtNome');
const txtIdentificacao = document.getElementById('txtIdentificacao');
const txtEmail = document.getElementById('txtEmail');
const txtTelefone = document.getElementById('txtTelefone');
const txtSenha = document.getElementById('txtSenha');
const txtConfirmarSenha = document.getElementById('txtConfirmarSenha');

const txtCep = document.getElementById('txtCep');
const txtUf = document.getElementById('txtUF');
const txtCidade = document.getElementById('txtCidade');
const txtBairro = document.getElementById('txtBairro');
const txtLogradouro = document.getElementById('txtLogradouro');
const txtNumero = document.getElementById('txtNumero');  
const txtComplemento = document.getElementById('txtComplemento');  

const txtPix = document.getElementById('txtPix');
const txtWebSite = document.getElementById('txtWebSite');
const cmbCategorias = document.getElementById('cmbCategorias');
const txtEmailContado = document.getElementById('txtEmailContato');
const txtDescricao = document.getElementById('txtDescricao');
const cmbItensAceitos = document.querySelector('.select-items');
const cmbDiasDisponiveis = document.querySelector('.select-dias');
const listaItens = document.getElementById('selectedItems');
const listaDias = document.getElementById('selectedDias');

const botaoCadastrarDoador = document.getElementById('btnCadastrarDoador');
const botaoCadastrarOng = document.getElementById('btnCadastrarOng');


txtCep.addEventListener('input', function () {
    if (this.value.length > 8)
        this.value = this.value.slice(0, 8);
})

if (botaoCadastrarDoador != null) {
    botaoCadastrarDoador.onclick = function (event) {
        VerificarDadosPadraoCadastro(event);
    }
}

if (botaoCadastrarOng != null) {
    botaoCadastrarOng.onclick = function (event) {
        VerificarDadosPadraoCadastro(event);
        VerificarDadosOng(event);
    }
}

function VerificarDadosPadraoCadastro(event) {
    txtNome.classList.remove('inputInvalido');
    erroNome.textContent = ""
    txtIdentificacao.classList.remove('inputInvalido');
    erroIdentificacao.textContent = ""
    txtEmail.classList.remove('inputInvalido');
    erroEmail.textContent = ""
    txtTelefone.classList.remove('inputInvalido');
    erroTelefone.textContent = ""
    txtSenha.classList.remove('inputInvalido');
    erroSenha.textContent = ""
    txtConfirmarSenha.classList.remove('inputInvalido');
    erroConfirmarSenha.textContent = ""
    txtCep.classList.remove('inputInvalido');
    txtUf.classList.remove('inputInvalido');
    txtCidade.classList.remove('inputInvalido');
    txtBairro.classList.remove('inputInvalido');
    txtLogradouro.classList.remove('inputInvalido');
    txtNumero.classList.remove('inputInvalido');
    txtComplemento.classList.remove('inputInvalido');
    erroEndereco.textContent = "";

    if (txtNome.value == "") {
        txtNome.classList.add('inputInvalido');
        event.preventDefault();
        erroNome.textContent = "O nome não pode estar vazio"
    }
    if (txtIdentificacao.value == "") {
        txtIdentificacao.classList.add('inputInvalido');
        event.preventDefault();
        erroIdentificacao.textContent = "O documento não pode estar vazio"
    }
    if (txtEmail.value == "") {
        txtEmail.classList.add('inputInvalido');
        event.preventDefault();
        erroEmail.textContent = "O email não pode estar vazio"
    }
    if (txtTelefone.value == "") {
        txtTelefone.classList.add('inputInvalido');
        event.preventDefault();
        erroTelefone.textContent = "O telefone não pode estar vazio";
    }
    if (txtSenha.value.length < 8) {
        txtSenha.classList.add('inputInvalido');
        event.preventDefault();
        erroSenha.textContent = "A senha precisa ter no mínimo 8 caracteres";
    }
    if (txtConfirmarSenha.value != txtSenha.value) {
        txtConfirmarSenha.classList.add('inputInvalido');
        event.preventDefault();
        erroConfirmarSenha.textContent = "A senhas precisam estar iguais";
    }
    if (txtCep.value.length != 8) {
        txtCep.classList.add('inputInvalido');
        event.preventDefault();
        erroEndereco.textContent = "O cep precisa ter 8 digitos";
    }
    if (txtUf.selectedIndex == 0) {
        txtUf.classList.add('inputInvalido');
        event.preventDefault();
        erroEndereco.textContent = "Preencha todos os campos de endereço";
    }
    if (txtBairro.value == "") {
        txtBairro.classList.add('inputInvalido');
        event.preventDefault();
        erroEndereco.textContent = "Preencha todos os campos de endereço";
    }
    if (txtCidade.value == "") {
        txtCidade.classList.add('inputInvalido');
        event.preventDefault();
        erroEndereco.textContent = "Preencha todos os campos de endereço";
    }
    if (txtLogradouro.value == "") {
        txtLogradouro.classList.add('inputInvalido');
        event.preventDefault();
        erroEndereco.textContent = "Preencha todos os campos de endereço";
    }
    if (txtNumero.value == "") {
        txtNumero.classList.add('inputInvalido');
        event.preventDefault();
        erroEndereco.textContent = "Preencha todos os campos de endereço";
    }
    if (txtComplemento.value == "") {
        txtComplemento.classList.add('inputInvalido');
        event.preventDefault();
        erroEndereco.textContent = "Preencha todos os campos de endereço";
    }
}

function VerificarDadosOng(event) {
    txtPix.classList.remove('inputInvalido');
    erroPix.textContent = "";
    cmbCategorias.classList.remove('inputInvalido');
    erroCategorias.textContent = "";
    txtEmailContato.classList.remove('inputInvalido');
    erroEmailContato.textContent = "";
    txtDescricao.classList.remove('inputInvalido');
    erroDescricao.textContent = "";
    cmbItensAceitos.classList.remove('inputInvalido');
    erroItensAceitos.textContent = "";
    cmbDiasDisponiveis.classList.remove('inputInvalido');
    erroDiasDisponiveis.textContent = "";


    if (txtPix.value == "") {
        txtPix.classList.add('inputInvalido');
        event.preventDefault();
        erroPix.textContent = "O valor do pix não pode estar vazio";
    }
    if (cmbCategorias.selectedIndex == 0) {
        cmbCategorias.classList.add('inputInvalido');
        event.preventDefault();
        erroCategorias.textContent = "Selecione uma categoria para a sua ONG";
    }
    if (txtEmailContado.value == "") {
        txtEmailContado.classList.add('inputInvalido');
        event.preventDefault();
        erroEmailContato.textContent = "O valor do email de contato não pode estar vazio";
    }
    if (txtDescricao.value == "") {
        txtDescricao.classList.add('inputInvalido');
        event.preventDefault();
        erroDescricao.textContent = "A descrição não pode estar vazia";
    }
    if (listaItens.textContent == "") {
        cmbItensAceitos.classList.add('inputInvalido');
        event.preventDefault();
        erroItensAceitos.textContent = "Selecione pelo menos 1 item para doação";
    }
    if (listaDias.textContent == "") {
        cmbDiasDisponiveis.classList.add('inputInvalido');
        event.preventDefault();
        erroDiasDisponiveis.textContent = "Selecione pelo menos 1 dia disponivel";
    }
}


