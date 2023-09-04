const indicadores = document.querySelectorAll(".indicador");
const radios = document.querySelectorAll("input[type='radio']");
let qual = 0;
let temporizador

for(let i = 0; i < indicadores.length; i++){
  indicadores[i].addEventListener('click', mudarSlide);
  indicadores[i].setAttribute("indice", i);
};

function mudarSlide(event){
  event.preventDefault();

  clearInterval(temporizador);

  radios.forEach(element => {
    element.removeAttribute("checked");
  });

  qual = this.getAttribute("indice");
  radios[qual].setAttribute("checked", "checked")

  for(let i = 0; i < indicadores.length; i++){
    if(i == qual){
      console.log("aa");
      indicadores[i].classList.add("ativo");
    }
    else{
      indicadores[i].classList.remove("ativo");
    }
  }

  setTimeout(iniciarTemporizador, 5000)
}

function mudarAutomatico(){
  clearInterval(temporizador);
  qual++;
  if(qual == indicadores.length)
    qual = 0;

  radios.forEach(element => {
    element.removeAttribute("checked");
  });

  radios[qual].setAttribute("checked", "checked")

  for(let i = 0; i < indicadores.length; i++){
    if(i == qual){
      indicadores[i].classList.add("ativo");
    }
    else{
      indicadores[i].classList.remove("ativo");
    }
  } 
  iniciarTemporizador();
}

function iniciarTemporizador(){
  clearInterval(temporizador);
  temporizador = setInterval(mudarAutomatico, 4000);
}

iniciarTemporizador();

