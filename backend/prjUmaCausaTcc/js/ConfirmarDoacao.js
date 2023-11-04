

function aceitarDoacao(botao){
    const doacao = botao.id;

    const formData = new FormData();
    formData.append('confirmacao', 1);
    formData.append('doacao', doacao);

    console.log(doacao);

    fetch(`http://localhost:50944/JsonResponses/ConfirmarDoacao.aspx`, {
        method: 'POST',
        body: formData
    })
      .then(function (resposta) { return resposta.json() })
      .then(function (dados) {
           if (dados['situacao'] == 'true') {
               botao.parentNode.parentNode.classList.add("escondido");
           }
           else {
               
           }
       });
}


function recusarDoacao(botao) {
    const doacao = botao.id;

    const formData = new FormData();
    formData.append('confirmacao', 0);
    formData.append('doacao', doacao);

    fetch(`http://localhost:50944/JsonResponses/ConfirmarDoacao.aspx`, {
        method: 'POST',
        body: formData
    })
        .then(function (resposta) { return resposta.json() })
        .then(function (dados) {
            if (dados['situacao'] == 'true') {
                bloqueio.classList.add("escondido");
                popupConfirmacao.classList.add("escondido");
            }
            else {
            }
        });
}