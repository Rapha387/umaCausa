const botoesFechar = document.querySelectorAll('.botao-fechar');
const caixasFlutuantes = document.querySelectorAll('.caixa-flutuante')
const bloqueio = document.querySelector('.bloqueio');
const botaoDoar = document.getElementById('btnDoar');
const popupDoar = document.querySelector('.doacao');
const botaoDenunciar = document.getElementById('btnDenunciar');
const popupDenunciar = document.querySelector('.denuncia');
const botaoCompartilhar = document.getElementById('btnCompartilhar');
const popupCompartilhar = document.querySelector('.popup-compartilhar');
const inputCompartilhar = document.getElementById('inputCompartilhar');
const botaoCopiar = document.getElementById('btnCopiar');

botoesFechar.forEach(function(btn){
  btn.addEventListener('click', function() {
    let popup = this.parentNode;
    popup.classList.add("escondido");
    bloqueio.classList.add("escondido")
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

botaoCopiar.addEventListener("click", (event) => {
  event.preventDefault();
  inputCompartilhar.select();
  inputCompartilhar.setSelectionRange(0, 99999);
  document.execCommand("copy");
  alert("Texto copiado para a área de transferência!");
});