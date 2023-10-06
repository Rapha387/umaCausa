const caixasFlutuantes = document.querySelectorAll('.caixa-flutuante');
const botoesFechar = document.querySelectorAll('.botao-fechar');
const botoesVoltar = document.querySelectorAll('.botao-voltar');
const bloqueio = document.querySelector('.bloqueio');

const botaoDoar = document.getElementById('btnDoar');
const popupDoar = document.getElementById('popupPrincipal');

const botaoDenunciar = document.getElementById('btnDenunciar');
const popupDenunciar = document.querySelector('.denuncia');
const txtDescricaoDenuncia = document.getElementById('txtObservao');
const cmbMotivoDenuncia = document.getElementById('cmbMotivoDenuncia');
const btnRealizarDenunciaUsuario = document.getElementById('btnRealizarDenunciaUsuario')

const botaoCompartilhar = document.getElementById('btnCompartilhar');
const popupCompartilhar = document.querySelector('.popup-compartilhar');
const inputCompartilhar = document.getElementById('inputCompartilhar');
const botaoCopiar = document.getElementById('btnCopiar');

const popupDoacaoMonetaria = document.querySelector('.popup-doacao-monetaria');
const botaoDoacaoMonetaria = document.getElementById('btnDoarMonetario');
const fileInputComprovante = document.getElementById('txtComprovante');
const botaoCopiarPix = document.getElementById('btnCopiarPix');
const txtPix = document.getElementById('txtPix');

const popupDoacaoItem = document.querySelector('.popup-doacao-item');
const botaoDoacaoItem = document.getElementById('btnDoarItem');

const url = window.location.href;

botoesFechar.forEach(function(btn){
  btn.addEventListener('click', function() {
    let popup = this.parentNode;
    popup.classList.add("escondido");
    bloqueio.classList.add("escondido");
  });
});

botoesVoltar.forEach(function(btn){
  btn.addEventListener('click', function(){
    let popup = this.parentNode;
    popup.classList.add("escondido");
    popupDoar.classList.remove("escondido");
    if (botaoDoacaoItem)
        LimparPopUpItem();
        
    if(botaoDoacaoMonetaria)
        LimparPopupMonetario();
  });
});

bloqueio.addEventListener('click', function() {
  caixasFlutuantes.forEach(function(caixa){
    caixa.classList.add("escondido");
      bloqueio.classList.add("escondido");
    if(botaoDoacaoItem)
          LimparPopUpItem();

    if(botaoDoacaoMonetaria)
        LimparPopupMonetario();
  });
});

if (botaoDoar) {
    botaoDoar.addEventListener('click', (event) => {
        event.preventDefault();
        VerificarUsuario().then(function (resultado) {
            if (resultado == true) {
                bloqueio.classList.remove("escondido");
                popupDoar.classList.remove("escondido");
            }
            else {
                window.location.href = "login.aspx";
            }
        });
        
    });
}


if (botaoDenunciar) {
    botaoDenunciar.addEventListener('click', (event) => {
      event.preventDefault();
      bloqueio.classList.remove("escondido");
      popupDenunciar.classList.remove("escondido");
    });
}

botaoCompartilhar.addEventListener('click', (event) => {
  event.preventDefault();
  bloqueio.classList.remove("escondido");
  popupCompartilhar.classList.remove("escondido");
});

botaoDoacaoMonetaria.addEventListener('click', () => {
  popupDoar.classList.add('escondido');
  popupDoacaoMonetaria.classList.remove('escondido');
});

botaoDoacaoItem.addEventListener('click', () => {
  popupDoar.classList.add('escondido');
  popupDoacaoItem.classList.remove('escondido');
});


function LimparPopupMonetario() {
    LimparInputsMonetario();
    popupDoacaoMonetaria.classList.add('escondido');
    txtValor.value = "";
    txtComprovante.value = "";
    qrcodeContainer.innerHTML = "";
    spanComprovante.textContent = "Nenhum Comprovante Anexado"
    fileInputComprovante.value = "";
}

function LimparPopUpItem() {
    LimparInputsItem();
    popupDoacaoItem.classList.add('escondido');
    txtNomeItem.value = "";
    cmbTipoItem.selectedIndex = 0;
    cmbTipoEntrega.selectedIndex = 0;
    txtDataEnvio.value = "";
    txtHorario.value = "";
    txtQuantidadeItem.value = "";
}

function LimparPopUpDenuncia() {
    txtDescricaoDenuncia.value = "";
    cmbMotivoDenuncia.selectedIndex = 0;
    popupDenunciar.classList.add('escondido');
    bloqueio.classList.add('escondido');
}

if (botaoCopiar) {
    inputCompartilhar.value = url
    botaoCopiar.addEventListener("click", function (e) {
        e.preventDefault();
        inputCompartilhar.select();
        document.execCommand("copy");
        inputCompartilhar.setSelectionRange(0, 99999);
        alert("Link copiado para a área de transferência!");
    });
}

if (fileInputComprovante) {
    fileInputComprovante.addEventListener('change', () => {
        if (fileInputComprovante.files.length > 0) {
            spanComprovante.textContent = `Documento Anexado: ${fileInputComprovante.files[0].name}`;

        } else {
            spanComprovante.textContent = "Nenhum Comprovante Anexado"
        }
    });
}

if (botaoCopiarPix) {
    botaoCopiarPix.addEventListener("click", function (e) {
        e.preventDefault();
        if (txtPix.value != "") {
            navigator.clipboard.writeText(txtPix.value)
            botaoCopiarPix.innerHTML = "<img src='./../images/icons/copiar.png' alt=''> Copiado";
        }
    });
}