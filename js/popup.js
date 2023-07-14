const botoesFechar = document.querySelectorAll('.botao-fechar');
const bloqueio = document.querySelector('.bloqueio');
const botaoDoar = document.getElementById('btnDoar');
const popupDoar = document.querySelector('.doacao');

botoesFechar.forEach(function(btn){
  btn.addEventListener('click', function() {
    var popup = this.parentNode;
    popup.classList.add("escondido");
    bloqueio.classList.add("escondido")
  });
});

botaoDoar.addEventListener('click', (event) => {
  event.preventDefault();
	bloqueio.classList.remove("escondido");
  popupDoar.classList.remove("escondido");
});
