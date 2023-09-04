const caixasFlutuantes = document.querySelectorAll('.caixa-flutuante');
const botoesFechar = document.querySelectorAll('.botao-fechar');
const botoesVoltar = document.querySelectorAll('.botao-voltar');
const bloqueio = document.querySelector('.bloqueio');

const botaoDoar = document.getElementById('btnDoar');
const popupDoar = document.getElementById('popupPrincipal');

const botaoDenunciar = document.getElementById('btnDenunciar');
const popupDenunciar = document.querySelector('.denuncia');

const botaoCompartilhar = document.getElementById('btnCompartilhar');
const popupCompartilhar = document.querySelector('.popup-compartilhar');
const inputCompartilhar = document.getElementById('inputCompartilhar');
const botaoCopiar = document.getElementById('btnCopiar');

const popupDoacaoMonetaria = document.querySelector('.popup-doacao-monetaria');
const botaoDoacaoMonetaria = document.getElementById('btnDoarMonetario');

const popupDoacaoItem = document.querySelector('.popup-doacao-item');
const botaoDoacaoItem = document.getElementById('btnDoarItem')

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
  });
});

bloqueio.addEventListener('click', function() {
  caixasFlutuantes.forEach(function(caixa){
    caixa.classList.add("escondido");
    bloqueio.classList.add("escondido");
  });
});

botaoDoar.addEventListener('click', (event) => {
  event.preventDefault();
	bloqueio.classList.remove("escondido");
  popupDoar.classList.remove("escondido");
});

botaoDenunciar.addEventListener('click', (event) => {
  event.preventDefault();
	bloqueio.classList.remove("escondido");
  popupDenunciar.classList.remove("escondido");
});

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

/*
  botaoCopiar.addEventListener("click", (event) => {
  event.preventDefault();
  inputCompartilhar.select();
  inputCompartilhar.setSelectionRange(0, 99999);
  document.execCommand("copy");
  alert("Texto copiado para a área de transferência!");
});
*/