
const itemList = document.getElementById('itemList');
const diasList = document.getElementById('diasList');

function esconderSelectItens() {
    itemList.classList.toggle('invisivel');
}
function esconderSelectDias() {
    diasList.classList.toggle('invisivel');
}


let selecoes = [];
let selecoesDias = [];

function selecionarItem(item) {

    if (!selecoes.includes(item)) {
        selecoes.push(item);
        exibirSelecoes(item);
    }
    esconderSelectItens();
}

function selecionarDia(dia) {

    if (!selecoesDias.includes(dia)) {
        selecoesDias.push(dia);
        exibirSelecoesDias(dia);
    }
    esconderSelectDias();
}


function exibirSelecoes(item) {
    const selectedItemsList = document.getElementById("selectedItems");
    selectedItemsList.innerHTML = "";

    for (let i = 0; i < selecoes.length; i++) {
        let listItem = document.createElement("asp:ListItem");
        listItem.classList.add('itens');
        listItem.setAttribute("value", selecoes[i].value);

        let textoItem = document.createElement("div");
        textoItem.classList.add('textoItem');
        textoItem.innerText = selecoes[i].innerText;

        botaoRemoverItem = document.createElement("button");
        botaoRemoverItem.classList.add('removerItem');
        botaoRemoverItem.textContent = "X";
        botaoRemoverItem.classList.add('botao-remover-item');

        selectedItemsList.appendChild(listItem);
        listItem.appendChild(textoItem);
        listItem.appendChild(botaoRemoverItem);

        botaoRemoverItem.addEventListener('click', function () {
            const valorBotao = selecoes[i];
            const index = selecoes.indexOf(valorBotao);

            if (index !== -1) {
                selecoes.splice(index, 1);
            }

            botaoRemoverItem.parentNode.parentNode.removeChild(listItem);
            exibirSelecoes();
        })
    }
}

function exibirSelecoesDias(dia) {
    const selectedDiasList = document.getElementById("selectedDias");
    selectedDiasList.innerHTML = "";

    for (let i = 0; i < selecoesDias.length; i++) {
        let listItem = document.createElement("li");
        listItem.classList.add('itens');
        listItem.setAttribute("value", selecoesDias[i].value);

        let textoItem = document.createElement("div");
        textoItem.classList.add('textoItem');
        textoItem.innerText = selecoesDias[i].innerText;

        botaoRemoverItem = document.createElement("button");
        botaoRemoverItem.classList.add('removerItem');
        botaoRemoverItem.textContent = "X";
        botaoRemoverItem.classList.add('botao-remover-item');

        selectedDiasList.appendChild(listItem);
        listItem.appendChild(textoItem);
        listItem.appendChild(botaoRemoverItem);

        botaoRemoverItem.addEventListener('click', function () {
            const valorBotao = selecoesDias[i];
            const index = selecoesDias.indexOf(valorBotao);

            if (index !== -1) {
                selecoesDias.splice(index, 1);
            }

            botaoRemoverItem.parentNode.parentNode.removeChild(listItem);
            exibirSelecoesDias();
        })
    }
}