

const quantidadeProgresso = document.querySelectorAll(".quantidade-progresso");
const barraProgresso = document.querySelector(".barra-progresso")

const larguraBarraProgresso = barraProgresso.offsetWidth;

quantidadeProgresso.forEach(function (progresso) {
    const larguraProgresso = progresso.offsetWidth;

    const porcentagem = (larguraProgresso / larguraBarraProgresso) * 100;

    if (porcentagem > 70) {
        progresso.style.backgroundColor = '#3EAB2C';
    }
    else if (porcentagem > 40) {
        progresso.style.backgroundColor = '#ffd025';
    }
});