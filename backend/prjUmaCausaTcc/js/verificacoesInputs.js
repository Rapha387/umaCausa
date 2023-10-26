const txtNome = document.getElementById('txtNome');
const txtCpf = document.getElementById('txtCpf');
const txtCnpj = document.getElementById('txtCnpj');
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
const cmbTiposPix = document.getElementById('cmbTiposPix');
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

const chkItem1 = document.getElementById('chkItem1');
const chkItem2 = document.getElementById('chkItem2');
const chkItem3 = document.getElementById('chkItem3');
const chkItem4 = document.getElementById('chkItem4');
const chkItem5 = document.getElementById('chkItem5');
const chkItem6 = document.getElementById('chkItem6');
const chkItem7 = document.getElementById('chkItem7');

if (txtPix) {
    let cpf = txtPix.value.replace(/\D/g, '');
    cmbTiposPix.addEventListener('change', function () {
        txtPix.removeAttribute("pattern");
        txtPix.value = "";
        txtPix.setAttribute("maxlength", 11);
        if (cmbTiposPix.value == "telefone") {
            txtPix.placeholder = "13999999999 (somente numeros)";
            txtPix.type = "text";
            txtPix.setAttribute("pattern", "^+55\\d{11}$");
            return;
        }
        if (cmbTiposPix.value == "email") {
            txtPix.placeholder = "exemplo@exemplo.com";
            txtPix.type = "email";
            return;
        }
        if (cmbTiposPix.value == "cpf") {
            txtPix.placeholder = "12312312312 (somente numeros)";
            txtPix.setAttribute("pattern", "\\d{11}");
            txtPix.type = "text";
            return;
        }
        if (cmbTiposPix.value == "cnpj") {
            txtPix.placeholder = "12123123123412 (somente numeros)";
            txtPix.setAttribute("maxlength", 14);
            txtPix.setAttribute("pattern", "\\d{14}");
            txtPix.type = "text";
            return;
        }
        if (cmbTiposPix.value == "chaveAleatoria") {
            txtPix.placeholder = "chave aleatória";
            txtPix.removeAttribute("maxlength");
            txtPix.removeAttribute("pattern");
            txtPix.type = "text";
            return;
        }
    })
    txtPix.addEventListener('input', function (event) {
        if (cmbTiposPix.value == "telefone") {
            let valorInput = event.target.value;
            let valorNumerico = valorInput.replace(/[^0-9]/g, '');
            event.target.value = valorNumerico;

            let telefone = txtPix.value.replace(/\D/g, '');
            if (telefone.length === 11) {
                telefone = telefone.replace(/(\d{2})(\d{5})(\d{4})/, '($1) $2-$3',);
                txtPix.value = telefone;
            }
        }

        if (cmbTiposPix.value == "cpf") {
            let valorInput = event.target.value;
            let valorNumerico = valorInput.replace(/[^0-9]/g, '');
            event.target.value = valorNumerico;

            let cpf = txtPix.value.replace(/\D/g, '');
            if (cpf.length === 11) {
                cpf = cpf.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, '$1.$2.$3-$4');
                txtPix.value = cpf;
            }
        }

        if (cmbTiposPix.value == "cnpj") {

            let txtPix = event.target.value;
            let valorNumerico = txtPix.replace(/[^0-9]/g, '');
            event.target.value = valorNumerico;
        }
    })
}

if (txtCep) {
    txtCep.addEventListener('input', function () {
        if (this.value.length > 8)
            this.value = this.value.slice(0, 8);
    })
}

if (botaoCadastrarDoador) {
    botaoCadastrarDoador.onclick = function (event) {
        VerificarDadosPadraoCadastro(event);
    }
}

if (botaoCadastrarOng) {
    botaoCadastrarOng.onclick = function (event) {
        VerificarDadosPadraoCadastro(event);
        VerificarDadosOng(event);
    }
}

function VerificarDadosPadraoCadastro(event) {
    txtNome.classList.remove('inputInvalido');
    erroNome.textContent = "";
    if (txtCpf) {
        txtCpf.classList.remove('inputInvalido');
    }
    if (txtCnpj) {
        txtCnpj.classList.remove('inputInvalido');
    }
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
    if (txtCpf) {
        if (txtCpf.value.length < 11) {
            txtCpf.classList.add('inputInvalido');
            event.preventDefault();
            erroIdentificacao.textContent = "Documento Inválido";
        }
        if (txtCpf.value == "") {
            txtCpf.classList.add('inputInvalido');
            event.preventDefault();
            erroIdentificacao.textContent = "O documento não pode estar vazio"
        }
    }
    if (txtCnpj) {
        if (txtCnpj.value.length < 14) {
            txtCnpj.classList.add('inputInvalido');
            event.preventDefault();
            erroIdentificacao.textContent = "Documento Inválido";
        }
        if (txtCnpj.value == "") {
            txtCnpj.classList.add('inputInvalido');
            event.preventDefault();
            erroIdentificacao.textContent = "O documento não pode estar vazio"
        }
    }
    if (txtEmail.value == "") {
        txtEmail.classList.add('inputInvalido');
        event.preventDefault();
        erroEmail.textContent = "O email não pode estar vazio"
    }
    if (txtTelefone.value.length < 11) {
        txtTelefone.classList.add('inputInvalido');
        event.preventDefault();
        erroTelefone.textContent = "Número de telefone inválido";
    }
    if (txtTelefone.value == "") {
        txtTelefone.classList.add('inputInvalido');
        event.preventDefault();
        erroTelefone.textContent = "O número de telefone não pode estar vazio";
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
}

function VerificarDadosOng(event) {
    txtPix.classList.remove('inputInvalido');
    erroPix.textContent = "";
    txtEmailContato.classList.remove('inputInvalido');
    erroEmailContato.textContent = "";
    txtDescricao.classList.remove('inputInvalido');
    erroDescricao.textContent = "";
    erroDias.textContent = "";

    if (cmbTiposPix.value == "telefone" || cmbTiposPix.value == "cpf" && txtPix.value.length < 11) {
        txtPix.classList.add('inputInvalido');
        event.preventDefault();
        erroPix.textContent = "Valor do pix inválido";
    }
    if (cmbTiposPix.value == "telefone" || cmbTiposPix.value == "cnpj" && txtPix.value.length < 14) {
        txtPix.classList.add('inputInvalido');
        event.preventDefault();
        erroPix.textContent = "Valor do pix inválido";
    }
    if (txtPix.value == "") {
        txtPix.classList.add('inputInvalido');
        event.preventDefault();
        erroPix.textContent = "O valor do pix não pode estar vazio";
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
}

if (txtTelefone) {
    txtTelefone.addEventListener('input', function (event) {
        let valorInput = event.target.value;
        let valorNumerico = valorInput.replace(/[^0-9]/g, '');
        event.target.value = valorNumerico;

        let telefone = txtTelefone.value.replace(/\D/g, '');
        if (telefone.length === 11) {
            telefone = telefone.replace(/(\d{2})(\d{5})(\d{4})/, '($1) $2-$3');
            txtTelefone.value = telefone;
        }
    })
}

if (txtCpf) {
    txtCpf.addEventListener('input', function (event) {
        let valorInput = event.target.value;
        let valorNumerico = valorInput.replace(/[^0-9]/g, '');
        event.target.value = valorNumerico;

        let cpf = txtCpf.value.replace(/\D/g, '');
        if (cpf.length === 11) {
            cpf = cpf.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, '$1.$2.$3-$4');
            txtCpf.value = cpf;
        }
    })
}

if (txtCnpj) {
    txtCnpj.addEventListener('input', function (event) {
        let valorInput = event.target.value;
        let valorNumerico = valorInput.replace(/[^0-9]/g, '');
        event.target.value = valorNumerico;

        let cnpj = txtCnpj.value.replace(/\D/g, '');
        if (cnpj.length === 14) {
            cnpj = cnpj.replace(/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, '$1.$2.$3/$4-$5');
            txtCnpj.value = cnpj;
        }
    })
}