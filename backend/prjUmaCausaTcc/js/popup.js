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

const btnRealizarDoacaoItem = document.getElementById('btnAgendarItem');
const btnRealizarDoacaoMonetario = document.getElementById('btnRelizarDoacaoMonetaria');

const popupSucesso = document.querySelector('.popup-sucesso');
const popupErro = document.querySelector('.popup-erro');
const textoRespostaSucessoPopup = document.getElementById('textoRespostaSucesso');
const textoRespostaErroPopup = document.getElementById('textoRespostaErro');
const botoesRespostaPopup = document.querySelectorAll('.btnFecharPopUpResposta');

const popupConfirmacao = document.querySelector(".popup-confirmacao");
const btnAceitarConfirmacao = document.getElementById("btnAceitarConfirmacao");
const btnRecusarConfirmacao = document.getElementById("btnRecusarConfirmacao");

const url = window.location.href;

botoesFechar.forEach(function(btn){
  btn.addEventListener('click', function() {
    let popup = this.parentNode;
    popup.classList.add("escondido");
    bloqueio.classList.add("escondido");
      LimparPopUpDenuncia();
  });
});

if (botoesRespostaPopup) {
    botoesRespostaPopup.forEach(function(btn){
        btn.addEventListener('click', function () {
            let popup = this.parentNode;
            popup.classList.add("escondido");
            bloqueio.classList.add("escondido");
        })
    })
}

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
      if (btnRealizarDoacaoItem) {
          console.log("existe");
          LimparPopUpItem();
      }

      if (btnRealizarDoacaoMonetario)
          LimparPopupMonetario();

     if (botaoDenunciar)
        LimparPopUpDenuncia();
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
        VerificarUsuario().then(function (resultado) {
            if (resultado == true) {
                bloqueio.classList.remove("escondido");
                popupDenunciar.classList.remove("escondido");
            }
            else {
                window.location.href = "login.aspx";
            }
        })
    });
}

if (botaoCompartilhar) {
    botaoCompartilhar.addEventListener('click', (event) => {
        event.preventDefault();
        bloqueio.classList.remove("escondido");
        popupCompartilhar.classList.remove("escondido");
    });
}

if (botaoDoacaoMonetaria) {
    botaoDoacaoMonetaria.addEventListener('click', () => {
        popupDoar.classList.add('escondido');
        popupDoacaoMonetaria.classList.remove('escondido');
    });
}

if (botaoDoacaoItem) {
    botaoDoacaoItem.addEventListener('click', () => {
        popupDoar.classList.add('escondido');
        popupDoacaoItem.classList.remove('escondido');
    });
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

function aparecerPopupConfirmacao(botao) {
    if (popupConfirmacao) {
        bloqueio.classList.remove('escondido');
        popupConfirmacao.classList.remove('escondido');
        btnAceitarConfirmacao.name = botao.id;
    }
}
function esconderPopupConfirmacao() {
    if (popupConfirmacao) {
        bloqueio.classList.add('escondido');
        popupConfirmacao.classList.add('escondido');
    }
}

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
    if (cmbTipoItem) {
        cmbTipoItem.selectedIndex = 0;
    }
    cmbTipoEntrega.selectedIndex = 0;
    txtDataEnvio.value = "";
    txtHorario.value = "";
    txtQuantidadeItem.value = "";
}
function LimparPopUpDenuncia() {
    txtDescricaoDenuncia.value = "";
    cmbMotivoDenuncia.selectedIndex = 0;
    erroDenuncia.textContent = ""
    cmbMotivoDenuncia.classList.remove('inputInvalido');
    popupDenunciar.classList.add('escondido');
}



