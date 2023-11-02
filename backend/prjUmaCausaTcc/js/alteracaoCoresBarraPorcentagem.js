

const quantidadeProgresso = document.querySelectorAll(".quantidade-progresso");
const barraProgresso = document.querySelector(".barra-progresso")



if (barraProgresso) {
    console.log(quantidadeProgresso);

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
}

const barraMeta = document.querySelector(".progresso")
const pregoressoMeta = document.querySelector(".barra-meta")


if (barraMeta) {
        console.log("ss")

        const tamanahoBarra = pregoressoMeta.offsetWidth;

        const larguraProgresso = barraMeta.offsetWidth;

        const porcentagem = (larguraProgresso / tamanahoBarra) * 100;

        if (porcentagem > 70) {
            barraMeta.style.backgroundColor = '#3EAB2C';
        }
        else if (porcentagem > 40) {
            barraMeta.style.backgroundColor = '#ffd025';
        }
        else{
            barraMeta.style.backgroundColor = '#D45F2C';
        }
}