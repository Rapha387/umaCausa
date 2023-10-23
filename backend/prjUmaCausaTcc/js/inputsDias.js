const chkDia1 = document.getElementById("chkDia1");
const chkDia2 = document.getElementById("chkDia2");
const chkDia3 = document.getElementById("chkDia3");
const chkDia4 = document.getElementById("chkDia4");
const chkDia5 = document.getElementById("chkDia5");
const chkDia6 = document.getElementById("chkDia6");
const chkDia7 = document.getElementById("chkDia7");

const txtComecoDia1 = document.getElementById("txtComecoDia1");
const txtComecoDia2 = document.getElementById("txtComecoDia2");
const txtComecoDia3 = document.getElementById("txtComecoDia3");
const txtComecoDia4 = document.getElementById("txtComecoDia4");
const txtComecoDia5 = document.getElementById("txtComecoDia5");
const txtComecoDia6 = document.getElementById("txtComecoDia6");
const txtComecoDia7 = document.getElementById("txtComecoDia7");

const txtFimDia1 = document.getElementById("txtFimDia1");
const txtFimDia2 = document.getElementById("txtFimDia2");
const txtFimDia3 = document.getElementById("txtFimDia3");
const txtFimDia4 = document.getElementById("txtFimDia4");
const txtFimDia5 = document.getElementById("txtFimDia5");
const txtFimDia6 = document.getElementById("txtFimDia6");
const txtFimDia7 = document.getElementById("txtFimDia7");

chkDia1.addEventListener("change", function (event) {
    event.preventDefault();
    mudarEstadoInputs(chkDia1, txtComecoDia1, txtFimDia1);
})
chkDia2.addEventListener("change", function (event) {
    event.preventDefault();
    mudarEstadoInputs(chkDia2, txtComecoDia2, txtFimDia2);
})
chkDia3.addEventListener("change", function (event) {
    event.preventDefault();
    mudarEstadoInputs(chkDia3, txtComecoDia3, txtFimDia3);
})
chkDia4.addEventListener("change", function (event) {
    event.preventDefault();
    mudarEstadoInputs(chkDia4, txtComecoDia4, txtFimDia4);
})
chkDia5.addEventListener("change", function (event) {
    event.preventDefault();
    mudarEstadoInputs(chkDia5, txtComecoDia5, txtFimDia5);
})
chkDia6.addEventListener("change", function (event) {
    event.preventDefault();
    mudarEstadoInputs(chkDia6, txtComecoDia6, txtFimDia6);
})
chkDia7.addEventListener("change", function (event) {
    event.preventDefault();
    mudarEstadoInputs(chkDia7, txtComecoDia7, txtFimDia7);
})

function mudarEstadoInputs(chkDia,txtComecoDia, txtFimDia){
    if (chkDia.checked) {
        txtComecoDia.disabled = false;
        txtFimDia.disabled = false;
    }
    else {
        txtComecoDia.value = "";
        txtFimDia.value = "";
        txtComecoDia.disabled = true;
        txtFimDia.disabled = true;
    }
}

