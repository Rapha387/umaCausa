
const itemList = document.getElementById('itemList');


function esconderSelect() {
    itemList.classList.toggle('invisivel');
}

let selecoes = [];

function selecionarItem(item) {

    if (!selecoes.includes(item)) {
        selecoes.push(item);
        exibirSelecoes(item);
    }
    esconderSelect();
}


function exibirSelecoes(item) {
    const selectedItemsList = document.getElementById("selectedItems");
    selectedItemsList.innerHTML = "";

    for (let i = 0; i < selecoes.length; i++) {
        let listItem = document.createElement("li");
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