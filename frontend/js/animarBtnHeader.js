

const btnMenuHeader = document.getElementById('btnMenuHeader');

if(btnMenuHeader){
  btnMenuHeader.addEventListener('click', function(){
    btnMenuHeader.classList.toggle('animarMenu');
  })
}