

const btnMenuHeader = document.getElementById('btnMenuHeader');
const main = document.getElementsByTagName('main')[0];
const footer = document.getElementsByTagName('footer')[0];
const carrossel = document.querySelector('.carrossel');
const banner = document.querySelector('.banner');


if (btnMenuHeader) {  
  btnMenuHeader.addEventListener('click', function(){
      btnMenuHeader.classList.toggle('animarMenu');
      main.classList.toggle('escondido');
      footer.classList.toggle('escondido');
      if (carrossel)
          carrossel.classList.toggle('escondido');
      if (banner)
          banner.classList.toggle('escondido');
  })
}